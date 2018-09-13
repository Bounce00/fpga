
#include "fir.h"


using namespace std;
 
int main ()
{


	FirData_t signal;
	FirOut_t FirRes;
	FirCoef_t taps[11] ={0,-10,-9,23,56,63,56,23,-9,-10,0};

 int i=1, ramp_up;
 signal = 100;
 ramp_up = 1;
 fir(&FirRes,taps,signal);

// fir(&output,taps,signal);
 return 0;
 /*
    for(i=0;i<=1000;i++) {
   if (ramp_up == 1)
       signal = signal + 1;
   else
       signal = signal - 1;
 
    // Execute the function with latest input
   }
*/

}
