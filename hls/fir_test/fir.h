
#ifndef FIR_H_
#define FIR_H_

//#include "poly.h"
#include <ap_fixed.h>
#include <ap_int.h>

#define N   11
#define N2  10


typedef ap_fixed<10, 10 ,AP_TRN_ZERO,AP_SAT> din_t;
//typedef ap_fixed<INPUT_WIDTH, INPUT_WIDTH - INPUT_FRACTIONAL_BITS> din_t;
typedef ap_fixed<10, 10 > dout_t;
const unsigned COE_WIDTH = 10;
const unsigned COE_INPUT_FRACTIONAL_BITS = 0;
const unsigned Fir_O_WIDTH = 14;
const unsigned Fir_O_FRACTIONAL_BITS = 0;
const unsigned Fir_Cal_WIDTH = 19;	    //mul-accu max width
typedef ap_fixed<COE_WIDTH, COE_WIDTH> FirCoef_t;
typedef ap_fixed<10, 10,AP_TRN_ZERO,AP_SAT> FirData_t;
typedef ap_fixed<Fir_O_WIDTH, Fir_O_WIDTH> FirOut_t;
typedef ap_fixed<Fir_Cal_WIDTH,Fir_Cal_WIDTH> FirCal_t;


void fir (
		FirOut_t *y,
		FirCoef_t c[11],
		FirData_t d
 );



#endif
