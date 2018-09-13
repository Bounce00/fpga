
#include <iomanip>
#include <iostream>
#include <fstream>
#include "poly.h"
//#include "fft_top.h"
#include "param_def.h"
#include "fir.h"
#include "WRFileVec.h"

using namespace std;


//din_t tb_in[64] = {0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F,0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2A,0x2B,0x2C,0x2D,0x2E,0x2F,0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3A,0x3B,0x3C,0x3D,0x3E,0x3F};

int main()
{
	const int N_sig = 10000;

	char *fa = "sig_src.txt";
	//output files
	char *fp_fft0 = "fft_out0.txt";
	char *fp_fft1 = "fft_out1.txt";
	char *fp_fft2 = "fft_out2.txt";
	char *fp_fft3 = "fft_out3.txt";
	char *fp_fft4 = "fft_out4.txt";
	char *fp_fft5 = "fft_out5.txt";
	char *fp_fft6 = "fft_out6.txt";
	char *fp_fft7 = "fft_out7.txt";
	char *fp_fft8 = "fft_out8.txt";
	char *fp_fft9 = "fft_out9.txt";
	char *fp_fft10 = "fft_out10.txt";
	char *fp_fft11 = "fft_out11.txt";
	char *fp_fft12 = "fft_out12.txt";
	char *fp_fft13 = "fft_out13.txt";
	char *fp_fft14 = "fft_out14.txt";
	char *fp_fft15 = "fft_out15.txt";

	int val;
	int retval;
	din_t tb_in[N_sig] = {0};
	din_t tb_out[N_sig] = {0};
	ReadFileVec<N_sig, din_t,int>(fa, tb_in);

	Cmpxfft_out_t fft_out[N_ch];
	for(int i=0;i<64;i++)	//1040
	{
//		CmpxFirOut_t Final_o[N_ch];
		polyfilter_top(tb_in[i],fft_out);
		cout<<i<<endl;
	}

 //dec_out to file

	return 0;
}

