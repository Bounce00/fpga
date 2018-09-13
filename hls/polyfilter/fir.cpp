
#include "fir.h"

using namespace std;

void fir0_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir0_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir1_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir1_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir2_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir2_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir3_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir3_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir4_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir4_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir5_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir5_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir6_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir6_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir7_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir7_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir8_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir8_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir9_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir9_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir10_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir10_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir11_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir11_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir12_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir12_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir13_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir13_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir14_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir14_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir15_I (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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

void fir15_Q (
		FirOut_t *y,
		FirCoef_t c[N2],
		FirData_t x
 ) {
//#pragma HLS INTERFACE ap_vld port=x
//#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
 
 static FirData_t shift_reg[N2];
 FirCal_t acc;
 FirData_t data;
 int i;
 
 acc = 0;
 Shift_Accum_Loop:
 for (i=N2-1;i>=0;i--)
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
