#ifndef WINDOW_FN_TOP_H_
#define WINDOW_FN_TOP_H_

//#include "window_fn_class.h"
//
//// Test parameters
//#define WIN_TYPE xhls_window_fn::HANN
//#define WIN_LEN 32
//
//// Types and top-level function prototype
//#include <ap_int.h>
//// Define widths of fixed point fields
//#define W_IN    8
//#define IW_IN   8
//#define W_OUT   24
//#define IW_OUT  8
//#define W_COEF  18
//#define IW_COEF 2
//
//// Define fixed  point types for input, output and coefficients
//typedef ap_fixed<W_IN,IW_IN> win_fn_in_t;
//typedef ap_fixed<W_OUT,IW_OUT> win_fn_out_t;
//typedef ap_fixed<W_COEF,IW_COEF> win_fn_coef_t;
//
//// Top level function prototype - wraps all object, method and functions for HLS
//void window_fn_top(win_fn_out_t outdata[WIN_LEN], win_fn_in_t indata[WIN_LEN]);

#include "polyfilter_params.h"

#include "ap_int.h"
#include "hls_stream.h"
using namespace hls;

template<class TC>
void init_polyfilter_coef_array(TC *coeff)
{
   for (int i = 0; i < POLYFILTER_TLEN; i++) {
      coeff[i] = get_polyfilter_param(i);
   }
};

template<class TC>
void init_polyfilter_coef_matrix(TC* coeff)
{
   for (int i = 0; i < POLYFILTER_LEN; i++) {
	   for (int j=0; j<POLYFILTER_TCHS; j++) {
		   coeff[j*POLYFILTER_LEN+i] = get_polyfilter_param(j+i*POLYFILTER_TCHS);
	   }
   }
};

template<typename T, unsigned NCH, unsigned PNUM>
class PolyFilterIQmul;

#define RUN_DATA_LEN 4*POLYFILTER_TLEN

#define DATAWIDTH 16
#define SIM_FLOAT 0
#if SIM_FLOAT
	typedef double wavein_type;
	typedef double waveout_type;
	typedef double coeff_type;
#else
	typedef ap_fixed<DATAWIDTH,2> wavein_type;
	typedef ap_fixed<DATAWIDTH,2> waveout_type;
	typedef ap_fixed<DATAWIDTH,2> coeff_type;
#endif

typedef std::complex<coeff_type> complex_coeff_type;

typedef struct{
	wavein_type v[POLYFILTER_TCHS];
} polyfilter_din_if;
typedef struct{
	std::complex<waveout_type> v[POLYFILTER_TCHS];
} polyfilter_dout_if;


// Top level function prototype - wraps all object, method and functions for HLS
void poly_filter(
		polyfilter_din_if  *indata,
		polyfilter_dout_if *outdata
		);
#endif // WINDOW_FN_TOP_H_
