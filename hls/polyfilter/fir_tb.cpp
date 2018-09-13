#include <stdio.h>
#include <math.h>
#include "fir.h"
 
int main () {
 constint    SAMPLES=600;
 FILE         *fp;
 
 data_t signal, output;
 coef_t taps[N] ={0,-10,-9,23,56,63,56,23,-9,-10,0,};
 
 int i, ramp_up;
 signal = 0;
 ramp_up = 1;
 
 fp=fopen("out.dat","w");
 for(i=0;i<=SAMPLES;i++) {
   if (ramp_up == 1)
       signal = signal + 1;
   else
       signal = signal - 1;
 
    // Execute the function with latest input
   fir(&output,taps,signal);
   
   if((ramp_up == 1) && (signal >= 75))
    ramp_up = 0;
   elseif((ramp_up == 0) && (signal <= -75))
    ramp_up = 1;
   
    // Save the results.
   fprintf(fp,"%i %d %d\n",i,signal,output);
 }
 fclose(fp);
 
 printf("Comparing against output data\n");
 if(system("diff -w out.datout.gold.dat")) {
 
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "FAIL: Output DOES NOT match the goldenoutput\n");
    fprintf(stdout, "*******************************************\n");
    return1;
 } else{
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "PASS: The output matches the golden output!\n");
    fprintf(stdout, "*******************************************\n");
    return0;
 }
}