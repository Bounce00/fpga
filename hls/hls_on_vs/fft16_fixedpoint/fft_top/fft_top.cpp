
#include <iostream>
#include <cmath>
#include <complex>

using namespace std;

#define PI 3.1415926535897932384626433832795028841971  
#define N_fft 16
#define N_shift 12

typedef std::complex<int> Cmpxint;
typedef std::complex<int> Cmpxfloat;
typedef int fft_cal;
//Cmpxfloat Wn_k[N_fft] = { Cmpxfloat(32767.0f, 0.0f), Cmpxfloat(30273.0f, -12539.0f), Cmpxfloat(23170.0f, -23170.0f), Cmpxfloat(12539.0f, -30273.0f), \
//						Cmpxfloat(0.0f, -32767.0f), Cmpxfloat(-12539.0f, -30273.0f), Cmpxfloat(-23170.0f, -23170.0f), Cmpxfloat(-30273.0f, -12539.0f) };
//Cmpxint Wn_k[N_fft] = { Cmpxint(127, 0), Cmpxint(117, -49), Cmpxint(90, -90), Cmpxint(49, -117),
//						Cmpxint(0, -127), Cmpxint(-49, -117), Cmpxint(-90, -90), Cmpxint(-117, -49) };
Cmpxfloat Wn_k[N_fft] = { Cmpxfloat(1.0f, 0.0f), Cmpxfloat(0.92388f, -0.38268f), Cmpxfloat(0.70711f, -0.70711f), Cmpxfloat(0.38268f, -0.92388f),
						Cmpxfloat(0, -1.0f), Cmpxfloat(-0.38268f, -0.92388f), Cmpxfloat(-0.70711f, -0.70711f), Cmpxfloat(-0.92388f, -0.38268f) };

///////////////////////////////////////////  
void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N_len);
//void ifft(int N, Cmpxfloat f[]); // 傅里叶逆变换  
////////////////////////////////////////////  

//精度0.0001弧度  

void c_mul(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	fft_cal re = a.real()*b.real() - a.imag()*b.imag();
	fft_cal im = a.real()*b.imag() + a.imag()*b.real();
	*c = Cmpxfloat(re, im);
}

void c_add(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	fft_cal re = a.real() + b.real();
	fft_cal im = a.imag() + b.imag();
//	re = re/256;
//	im = im/256;
	*c = Cmpxfloat(re, im);
}

void c_sub(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	fft_cal re = a.real() - b.real();
	fft_cal im = a.imag() - b.imag();
//	re = re /256;
//	im = im /256;
	*c = Cmpxfloat(re, im);
}
//傅里叶变化  

void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N)
{
	Cmpxfloat tmp[N_fft];
	for (int ii = 0; ii < N_fft; ii++)	//inverse input
	{
		switch (ii)
		{
		case(0) :  {tmp[ii] = f_in[0];  break; }
		case(1) :  {tmp[ii] = f_in[8]; break; }
		case(2) :  {tmp[ii] = f_in[4]; break; }
		case(3) :  {tmp[ii] = f_in[12]; break; }
		case(4) :  {tmp[ii] = f_in[2]; break; }
		case(5) :  {tmp[ii] = f_in[10]; break; }
		case(6) :  {tmp[ii] = f_in[6]; break; }
		case(7) :  {tmp[ii] = f_in[14]; break; }
		case(8) :  {tmp[ii] = f_in[1];  break; }
		case(9) :  {tmp[ii] = f_in[9]; break; }
		case(10) : {tmp[ii] = f_in[5]; break; }
		case(11) : {tmp[ii] = f_in[13]; break; }
		case(12) : {tmp[ii] = f_in[3]; break; }
		case(13) : {tmp[ii] = f_in[11]; break; }
		case(14) : {tmp[ii] = f_in[7]; break; }
		case(15) : {tmp[ii] = f_in[15]; break; }
		default:  {tmp[ii] = 0;	break; }
		}
	}

	
	Cmpxfloat t, wn;//中间变量  
	int  m,  M;
	/*----计算分解的级数M=log2(N)----*/
	M = 4;
	/*----FFT算法----*/
	for (m = 1; m <= M; m++)
	{
		switch (m)
		{
		case(1) :
		{			//BF1
					c_mul(tmp[1], Wn_k[0], &t);		
					c_sub(tmp[0], t, &tmp[1]);
					c_add(tmp[0], t, &tmp[0]);
					//BF2
					c_mul(tmp[3], Wn_k[0], &t);
					c_sub(tmp[2], t, &tmp[3]);
					c_add(tmp[2], t, &tmp[2]);
					//3
					c_mul(tmp[5], Wn_k[0], &t);
					c_sub(tmp[4], t, &tmp[5]);
					c_add(tmp[4], t, &tmp[4]);
					//4
					c_mul(tmp[7], Wn_k[0], &t);
					c_sub(tmp[6], t, &tmp[7]);
					c_add(tmp[6], t, &tmp[6]);
					//5
					c_mul(tmp[9], Wn_k[0], &t);
					c_sub(tmp[8], t, &tmp[9]);
					c_add(tmp[8], t, &tmp[8]);
					//6
					c_mul(tmp[11], Wn_k[0], &t);
					c_sub(tmp[10], t, &tmp[11]);
					c_add(tmp[10], t, &tmp[10]);
					//7
					c_mul(tmp[13], Wn_k[0], &t);
					c_sub(tmp[12], t, &tmp[13]);
					c_add(tmp[12], t, &tmp[12]);
					//8
					c_mul(tmp[15], Wn_k[0], &t);
					c_sub(tmp[14], t, &tmp[15]);
					c_add(tmp[14], t, &tmp[14]);
					
					break;
		}
		case(2) :
		{
					c_mul(tmp[2], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[2]);
					c_add(tmp[0], t, &tmp[0]);

					c_mul(tmp[3], Wn_k[4], &t);
					c_sub(tmp[1], t, &tmp[3]);
					c_add(tmp[1], t, &tmp[1]);

					c_mul(tmp[6], Wn_k[0], &t);
					c_sub(tmp[4], t, &tmp[6]);
					c_add(tmp[4], t, &tmp[4]);

					c_mul(tmp[7], Wn_k[4], &t);
					c_sub(tmp[5], t, &tmp[7]);
					c_add(tmp[5], t, &tmp[5]);
					//4
					c_mul(tmp[10], Wn_k[0], &t);
					c_sub(tmp[8], t, &tmp[10]);
					c_add(tmp[8], t, &tmp[8]);

					c_mul(tmp[11], Wn_k[4], &t);
					c_sub(tmp[9], t, &tmp[11]);
					c_add(tmp[9], t, &tmp[9]);

					c_mul(tmp[14], Wn_k[0], &t);
					c_sub(tmp[12], t, &tmp[14]);
					c_add(tmp[12], t, &tmp[12]);

					c_mul(tmp[15], Wn_k[4], &t);
					c_sub(tmp[13], t, &tmp[15]);
					c_add(tmp[13], t, &tmp[13]);
					break;
		}
		case(3) :
		{
					c_mul(tmp[4], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[4]);
					c_add(tmp[0], t, &tmp[0]);

					c_mul(tmp[5], Wn_k[2], &t);
					c_sub(tmp[1], t, &tmp[5]);
					c_add(tmp[1], t, &tmp[1]);
					
					c_mul(tmp[6], Wn_k[4], &t);
					c_sub(tmp[2], t, &tmp[6]);
					c_add(tmp[2], t, &tmp[2]);
					
					c_mul(tmp[7], Wn_k[6], &t);
					c_sub(tmp[3], t, &tmp[7]);
					c_add(tmp[3], t, &tmp[3]);
					//
					c_mul(tmp[12], Wn_k[0], &t);
					c_sub(tmp[8], t, &tmp[12]);
					c_add(tmp[8], t, &tmp[8]);

					c_mul(tmp[13], Wn_k[2], &t);
					c_sub(tmp[9], t, &tmp[13]);
					c_add(tmp[9], t, &tmp[9]);

					c_mul(tmp[14], Wn_k[4], &t);
					c_sub(tmp[10], t, &tmp[14]);
					c_add(tmp[10], t, &tmp[10]);

					c_mul(tmp[15], Wn_k[6], &t);
					c_sub(tmp[11], t, &tmp[15]);
					c_add(tmp[11], t, &tmp[11]);
					break;
		}
		case(4) :
		{
					c_mul(tmp[8], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[8]);
					c_add(tmp[0], t, &tmp[0]);

					c_mul(tmp[9], Wn_k[1], &t);
					c_sub(tmp[1], t, &tmp[9]);
					c_add(tmp[1], t, &tmp[1]);

					c_mul(tmp[10], Wn_k[2], &t);
					c_sub(tmp[2], t, &tmp[10]);
					c_add(tmp[2], t, &tmp[2]);

					c_mul(tmp[11], Wn_k[3], &t);
					c_sub(tmp[3], t, &tmp[11]);
					c_add(tmp[3], t, &tmp[3]);
					//
					c_mul(tmp[12], Wn_k[4], &t);
					c_sub(tmp[4], t, &tmp[12]);
					c_add(tmp[4], t, &tmp[4]);

					c_mul(tmp[13], Wn_k[5], &t);
					c_sub(tmp[5], t, &tmp[13]);
					c_add(tmp[5], t, &tmp[5]);

					c_mul(tmp[14], Wn_k[6], &t);
					c_sub(tmp[6], t, &tmp[14]);
					c_add(tmp[6], t, &tmp[6]);

					c_mul(tmp[15], Wn_k[7], &t);
					c_sub(tmp[7], t, &tmp[15]);
					c_add(tmp[7], t, &tmp[7]);
					break;
		}
		default:
			break;
		}
	}
	for (int ii = 0; ii < N_fft; ii++)
		f_out[ii] = tmp[ii];
}

int main()
{

	Cmpxfloat b[16];
	Cmpxfloat a[16] = { Cmpxfloat(0.0100, 0.0200), Cmpxfloat(0.0300, 0.0400), Cmpxfloat(0.0500, 0.0600), Cmpxfloat(0.0700, 0.0800), Cmpxfloat(0.0900, 0.1000), Cmpxfloat(0.1100, 0.1200), Cmpxfloat(0.1300, 0.1400), Cmpxfloat(0.1500, 0.1600),
				Cmpxfloat(0.1700, 0.1800), Cmpxfloat(0.1900, 0.2000), Cmpxfloat(0.2100, 0.2200), Cmpxfloat(0.2300, 0.2400), Cmpxfloat(0.2500, 0.2600), Cmpxfloat(0.2700, 0.2800), Cmpxfloat(0.2900, 0.3000), Cmpxfloat (0.3100,0.3200)};
//	Cmpxint a[16] = { Cmpxint(1, 2), Cmpxint(3, 4), Cmpxint(5, 6), Cmpxint(7, 8), Cmpxint(9, 10), Cmpxint(11, 12), Cmpxint(13, 14), Cmpxint(15, 16),
//				Cmpxint(17, 18), Cmpxint(19, 20), Cmpxint(21, 22), Cmpxint(23, 24), Cmpxint(25, 26), Cmpxint(27, 28), Cmpxint(29, 30), Cmpxint(31, 32)};

	fft_my(a, b, 16);
	return 1;
}




