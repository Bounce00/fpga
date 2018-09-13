#ifndef _PARAM_DEF_H
#define _PARAM_DEF_H

#include <ap_fixed.h>
#include <ap_int.h>
#include <complex>
#include <hls_math.h>
#include "hls_fft.h"

using namespace std;

#define N   160
#define N2  10


const unsigned INPUT_WIDTH = 10;				//ADC width 10bits
const unsigned INPUT_FRACTIONAL_BITS = 0;
const unsigned OUTPUT_WIDTH = 16;
const unsigned OUTPUT_FRACTIONAL_BITS = 0;
const unsigned N_ch = 16;

typedef ap_fixed<INPUT_WIDTH, INPUT_WIDTH - INPUT_FRACTIONAL_BITS,AP_TRN_ZERO,AP_SAT> din_t;
//typedef ap_fixed<INPUT_WIDTH, INPUT_WIDTH - INPUT_FRACTIONAL_BITS> din_t;
typedef ap_fixed<OUTPUT_WIDTH, OUTPUT_WIDTH - OUTPUT_FRACTIONAL_BITS> dout_t;


const unsigned COE_WIDTH = 10;
const unsigned COE_INPUT_FRACTIONAL_BITS = 0;
const unsigned Fir_O_WIDTH = 14;
const unsigned Fir_O_FRACTIONAL_BITS = 0;
const unsigned Fir_Cal_WIDTH = 19;	    //mul-accu max width
typedef ap_fixed<COE_WIDTH, COE_WIDTH-COE_INPUT_FRACTIONAL_BITS> FirCoef_t;
typedef ap_fixed<INPUT_WIDTH, INPUT_WIDTH - INPUT_FRACTIONAL_BITS,AP_TRN_ZERO,AP_SAT> FirData_t;
typedef ap_fixed<Fir_O_WIDTH, Fir_O_WIDTH-Fir_O_FRACTIONAL_BITS> FirOut_t;
typedef ap_fixed<Fir_Cal_WIDTH,Fir_Cal_WIDTH> FirCal_t;


const unsigned ExpWIDTH = 6;
const unsigned MulExp_Cal_WIDTH = 19;
const unsigned MulExp_O_WIDTH = 16;
typedef std::complex<din_t> dc_res_t;
typedef std::complex<din_t> CmpxFirData_t;
typedef std::complex<FirOut_t> CmpxFirOut_t;		//complex
typedef std::complex<FirCal_t> CmpxFirCal_t;
typedef ap_fixed<ExpWIDTH,ExpWIDTH> Exp_t;
typedef std::complex<Exp_t> CmpxExp_t;
typedef ap_fixed<MulExp_Cal_WIDTH,MulExp_Cal_WIDTH>MulExp_Cal_t;
typedef ap_fixed<MulExp_O_WIDTH,MulExp_O_WIDTH>ResMulExp_t;
typedef std::complex<MulExp_Cal_t> CmpxMulExp_Cal_t;
typedef std::complex<ResMulExp_t> CmpxResMulExp_t;


//---fft--

// configurable params
const char FFT_INPUT_WIDTH                     = 16;
const char FFT_OUTPUT_WIDTH                    = FFT_INPUT_WIDTH;
const char FFT_CONFIG_WIDTH                    = 8;
const char FFT_NFFT_MAX                        = 4;
const int  FFT_LENGTH                          = 1 << FFT_NFFT_MAX;


struct config1 : hls::ip_fft::params_t {
    static const unsigned ordering_opt = hls::ip_fft::natural_order;
    static const unsigned config_width = FFT_CONFIG_WIDTH;
    static const unsigned max_nfft = FFT_NFFT_MAX;
    static const unsigned butterfly_type = hls::ip_fft::use_xtremedsp_slices;
};

typedef hls::ip_fft::config_t<config1> config_t;
typedef hls::ip_fft::status_t<config1> status_t;

typedef ap_fixed<FFT_INPUT_WIDTH,1> fft_in_t;
typedef ap_fixed<FFT_OUTPUT_WIDTH,FFT_OUTPUT_WIDTH-FFT_INPUT_WIDTH+1> fft_out_t;
//typedef ap_fixed<FFT_OUTPUT_WIDTH,FFT_OUTPUT_WIDTH> data_out_t;
typedef std::complex<fft_in_t> Cmpxfft_in_t;
typedef std::complex<fft_out_t> Cmpxfft_out_t;






#endif
