
#include "fir.h"

using namespace std;



void fir (
		FirOut_t *y,
		FirCoef_t c[N],
		FirData_t x
 ) {
#pragma HLS PIPELINE
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM

 static FirData_t shift_reg[N];
 FirCal_t acc;
 FirData_t data;
 int i;

 acc = 0;
 Shift_Accum_Loop:
 for (i=N-1;i>=0;i--)
 {
	 if (i==0)
	 {
		 shift_reg[0]=x;
         data = x;
	 }
	 else
	 {
		 shift_reg[i]=shift_reg[i-1];
         data= shift_reg[i];
	 }
	 acc+=data*c[i];
 }
 *y= acc>>(Fir_Cal_WIDTH-Fir_O_WIDTH);				//retain 14 bits output
}
