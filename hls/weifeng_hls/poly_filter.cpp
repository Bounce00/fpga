//#include "poly_filter.h" // Provides typedefs and params
//
//// Include the entire xhls_window_fn namespace so that scope resolution --
//// i.e. prepending xhls_window_fn:: to everything -- is not necessary
//using namespace weshu_window_fn;
//
////Vivado HLSrequires a top-level function definition that wraps all object
//// instantiations and method calls to be synthesized as well as mapping
//// the top-level I/O (function arguments) into/out of the methods/functions.
//void window_fn_top(
//      win_fn_out_t outdata[WIN_LEN],
//      win_fn_in_t indata[WIN_LEN])
//{
//   // Instatiate a window_fn object - types and params defined in header file
//   window_fn<win_fn_in_t,win_fn_out_t,win_fn_coef_t,
//      WIN_LEN,WIN_TYPE> my_win_fn;
//
//   // Call the apply() method - an input data set is windowed for each "call"
//   // to window_fn_top()
//   my_win_fn.apply(outdata, indata);
//}
#include "poly_filter.h"
#include <cmath>

template<typename T, unsigned NCH, unsigned PNUM>
// T:   input/output type
// NCH: Total Channels
// PNUM:Total Phases Number
class PolyFilterIQmul
{
public:
	const static unsigned TOTAL_CHS= NCH;
	const static unsigned TOTAL_PHASES=PNUM;
	const static unsigned imask = TOTAL_PHASES-1;
	typedef std::complex<T> value_type;
	typedef T               input_type;
	typedef std::complex<T> output_type;

	class IQMUL_PARAMS
	{
	public:
		IQMUL_PARAMS(){
			#pragma HLS ARRAY_PARTITION variable=v_iq_mul complete dim=1
			for (int i = 0; i < TOTAL_PHASES; i++) {
				double phase0 = -1.0/2.0*M_PI*i;
				for (int k=0; k<TOTAL_CHS; k++) {
					double phase1 = k/2.0/TOTAL_CHS*M_PI;
					double real = std::cos(phase0)*std::cos(phase1)-std::sin(phase0)*std::sin(phase1);
					double imag = std::cos(phase0)*std::sin(phase1)+std::cos(phase1)*std::sin(phase0);
					v_iq_mul[k][i] = value_type(T(real),T(imag));
				}
			}
		}

        inline value_type get(unsigned i, unsigned j) const
        {
            return v_iq_mul[i][j];
        }

	private:
		value_type  v_iq_mul[TOTAL_CHS][TOTAL_PHASES];
	};

	inline PolyFilterIQmul(){
		i_ = 0;
	}

	inline void run(const input_type *din, output_type *dout){
		#pragma HLS INLINE recursive
		#pragma HLS PIPELINE II=1
		for(int i=0; i<TOTAL_CHS; i++){
			value_type iqmul_t = iqmulparams_.get(i, i_);
			dout[i] = output_type(din[TOTAL_CHS-1-i]*iqmul_t.real(),din[TOTAL_CHS-1-i]*iqmul_t.imag()); // indata need to be flipud
		}
		i_ = (i_+1)&imask;
	}

private:
	unsigned i_;
	const IQMUL_PARAMS iqmulparams_;
};

template<typename T, unsigned NCH, unsigned FLEN>
// T:   input/output type
// NCH: Total Channels
// FLEN: FIR TAP NUMBER For Each CH
class PolyFilterFIR
{
public:
	const static unsigned TOTAL_CHS = NCH;
	const static unsigned FIR_LENGTH= FLEN;
	typedef std::complex<T> input_type;
	typedef T               coeff_type;
	typedef T               value_type;
	typedef std::complex<T> output_type;

	class POLYFIR_COEFF{
	public:
		POLYFIR_COEFF(){
		#pragma HLS ARRAY_PARTITION variable=v_coeff_ complete dim=1
			for (int i = 0; i < FIR_LENGTH; i++) {
				for (int j=0; j<TOTAL_CHS; j++) {
					v_coeff_[j][i] = get_polyfilter_param(j+i*TOTAL_CHS);
				}
			}
		}
        inline coeff_type get(unsigned i, unsigned j) const
        {
            return v_coeff_[i][j];
        }
	private:
		coeff_type v_coeff_[TOTAL_CHS][FIR_LENGTH];
	};

	inline PolyFilterFIR(){
		#pragma HLS ARRAY_PARTITION variable=shifttab_ complete dim=1
		for(int i=0; i<TOTAL_CHS;i++){
			for(int j=0; j<FIR_LENGTH; j++){
				shifttab_[i][j] = input_type(0,0);
			}
		}
	}

	inline void run(const input_type *din, output_type *dout){
		#pragma HLS INLINE recursive
		#pragma HLS PIPELINE II=1
		for(int i=0; i<POLYFILTER_TCHS; i++){
			output_type sumdata = output_type(0,0); // local memory
			// do shift
			shift0:for(int j=0;j<FIR_LENGTH-1;j++){
				#pragma HLS LOOP_FLATTEN
				shifttab_[i][j] = shifttab_[i][j+1];
				}
			shifttab_[i][FIR_LENGTH-1] = din[i];
			// do filter
			filter0:for(int k=0;k<FIR_LENGTH;k++){
				#pragma HLS LOOP_FLATTEN
				coeff_type coeff_t = fircoeff_.get(i, k);
				sumdata += output_type(coeff_t*shifttab_[i][FIR_LENGTH-1-k].real(),coeff_t*shifttab_[i][FIR_LENGTH-1-k].imag());
			}
			dout[i] = sumdata;
		}
	}

private:
	const POLYFIR_COEFF fircoeff_;
	input_type shifttab_[TOTAL_CHS][FIR_LENGTH];
};


void poly_filter(
		polyfilter_din_if  *indata,
		polyfilter_dout_if *outdata)
{
#pragma HLS DATA_PACK variable=outdata
#pragma HLS ARRAY_PARTITION variable=outdata dim=1
#pragma HLS DATA_PACK variable=indata
#pragma HLS ARRAY_PARTITION variable=indata dim=1
#pragma HLS INTERFACE axis depth=64 port=outdata
#pragma HLS INTERFACE axis depth=64 port=indata
#pragma HLS PIPELINE II=1

	static PolyFilterIQmul<wavein_type, POLYFILTER_TCHS,POLYFILTER_IQ_MUL_NUM> iqmul_inst;
	static PolyFilterFIR  <wavein_type, POLYFILTER_TCHS,POLYFILTER_LEN>        iqfir_inst;
	std::complex<waveout_type> iqmul_res[POLYFILTER_TCHS];

	iqmul_inst.run(indata->v,iqmul_res);
	iqfir_inst.run(iqmul_res, outdata->v);
}

