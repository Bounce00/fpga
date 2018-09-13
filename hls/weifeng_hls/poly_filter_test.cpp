#include <iostream>
#include <fstream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <cmath>
using namespace std;

#include "poly_filter.h"

#define ABS_ERR_THRESH 0.000007
#define MAX_LINEBUF_SIZE 1024


void splitStr(const string& src, const string& separator, vector<string>& dest)
 {
     string str = src;
     string substring;
     string::size_type start = 0, index;

     do
     {
         index = str.find_first_of(separator,start);
         if (index != string::npos)
         {
             substring = str.substr(start,index-start);
             dest.push_back(substring);
            start = str.find_first_not_of(separator,index);
             if (start == string::npos) return;
         }
     }while(index != string::npos);

     //the last token
     substring = str.substr(start);
     dest.push_back(substring);
 }

int main(void){
	wavein_type  testdata[RUN_DATA_LEN];
	//waveout_type testres[RUN_DATA_LEN];
	wavein_type  testchdata[POLYFILTER_TCHS][RUN_DATA_LEN/POLYFILTER_TCHS];
	std::complex<waveout_type> testchres [POLYFILTER_TCHS][RUN_DATA_LEN/POLYFILTER_TCHS];
	std::complex<double>       refchres [POLYFILTER_TCHS][RUN_DATA_LEN/POLYFILTER_TCHS];
	unsigned err_cnt=0;

	//init the test vectors
	double f1 = 2.0/128.0;
	for (int i=0;i<RUN_DATA_LEN;i++){
		float samp_i = 0.1;  // use const wave
		testdata[i] = samp_i*cos(2.0*M_PI*i*f1);
	}

	//divide the test vector to channels
	int idx=0;
	for (int k=0; k<RUN_DATA_LEN/POLYFILTER_TCHS; k++){
		for (int j=0; j<POLYFILTER_TCHS; j++){
			testchdata[j][k] = testdata[idx];
			idx++;
		}
	}
/*
	// get the ref data
	//const char * reffilename = "../../../../ref_results_after_iqmul.dat";
	const char * reffilename = "../../../../ref_results_after_fir.dat";
	char         linebuf[MAX_LINEBUF_SIZE];
	ifstream reffile(reffilename,std::ios::in);
	if(!reffile){
		std::cout<<"Cannot Open file!" << "ref_results_after_fir.dat \n";
		return -1;
	}
	int j=0;
	while(!reffile.eof()){
		reffile.getline(linebuf, MAX_LINEBUF_SIZE);
		//cout << linebuf <<std::endl;
		vector<string> splitdat;
		splitStr(linebuf,",",splitdat);
		for(int i=0; i<(splitdat.size()/2); i++){
			double num0 = atof(splitdat[2*i].c_str());
			double num1 = atof(splitdat[2*i+1].c_str());
			//cout<<splitdat[i]<<" "<<num0<<endl;
			refchres[i][j] = std::complex<double>(num0, num1);
		}
		j++;
	}

*/
	// print result value
	for (int i=0;i<RUN_DATA_LEN/POLYFILTER_TCHS;i++){
		polyfilter_din_if  *invect = new polyfilter_din_if;
		polyfilter_dout_if *outvect = new polyfilter_dout_if;
		for(int j=0; j<POLYFILTER_TCHS; j++){
			invect->v[j] = testchdata[j][i];
		}
		poly_filter(invect,outvect);
		for(int j=0; j<POLYFILTER_TCHS; j++){
			testchres[j][i] = outvect->v[j];

			#if SIM_FLOAT == 0
				printf("%f,%f, ",outvect->v[j].real().to_float(),outvect->v[j].imag().to_float());
				double abs_err_real = double(testchres[j][i].real().to_float()) - double(refchres[j][i].real());
				double abs_err_imag = double(testchres[j][i].imag().to_float()) - double(refchres[j][i].imag());

			#else
				printf("%f,%f, ",outvect->v[j].real(),outvect->v[j].imag());
				double abs_err_real = double(testchres[j][i].real()) - double(refchres[j][i].real());
				double abs_err_imag = double(testchres[j][i].imag()) - double(refchres[j][i].imag());
			#endif
			if ((std::abs(abs_err_real) > ABS_ERR_THRESH) || (std::abs(abs_err_imag) > ABS_ERR_THRESH)) {
				if(0){
					cout << "Error threshold exceeded: i = " << i;
					#if SIM_FLOAT == 0
					cout << "  Expected: " << testchres[j][i].real().to_float() << "," <<testchres[j][i].imag().to_float();
					#else
					cout << "  Expected: " << testchres[j][i].real() << "," <<testchres[j][i].imag();
					#endif
					cout << "  Got: " << refchres[j][i];
					cout << "  Delta: " << abs_err_real << "," << abs_err_imag << endl;
				}
				err_cnt++;
			}

		}
		printf("\n");
	}
/*
	// Print final status message
	if (err_cnt) {
		cout << "!!! TEST FAILED - " << err_cnt;
		cout << " results out of tolerance." << endl;
	} else
		cout << "Test Passed" << endl;

	// Only return 0 on success
	if (err_cnt)
		return 1;
	else
		return 0;*/
	return 0;
}
