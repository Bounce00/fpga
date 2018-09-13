
#include <iostream>
#include <cmath>
#include <complex>

using namespace std;

#define PI 3.1415926535897932384626433832795028841971  
#define N_fft 16

typedef std::complex<int> Cmpxint;
typedef std::complex<float>Cmpxfloat;

Cmpxfloat Wn_k[N_fft] = { Cmpxfloat(1.0f, 0.0f), Cmpxfloat(0.92388f, -0.38268f), Cmpxfloat(0.70711f, -0.70711f), Cmpxfloat(0.38268f, -0.92388f),
						Cmpxfloat(0, -1.0f), Cmpxfloat(-0.38268f, -0.92388f), Cmpxfloat(-0.70711f, -0.70711f), Cmpxfloat(-0.92388f, -0.38268f) };

///////////////////////////////////////////  
void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N_len);
//void ifft(int N, Cmpxint f[]); // 傅里叶逆变换  
////////////////////////////////////////////  

//精度0.0001弧度  

void c_mul(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	float re = a.real()*b.real() - a.imag()*b.imag();
	float im = a.real()*b.imag() + a.imag()*b.real();
	*c = Cmpxfloat(re, im);
}

void c_add(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	float re = a.real() + b.real();
	float im = a.imag() + b.imag();
	*c = Cmpxfloat(re, im);
}

void c_sub(Cmpxfloat a, Cmpxfloat b, Cmpxfloat *c)
{
	float re = a.real() - b.real();
	float im = a.imag() - b.imag();
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
	Cmpxfloat aa = Cmpxfloat(1, 2);
	Cmpxfloat bb = Cmpxfloat(3, 4);
	Cmpxfloat cc;
	c_mul(aa, bb, &cc);
	Cmpxfloat b[16];
	Cmpxfloat a[16] = { Cmpxfloat(1, 2), Cmpxfloat(3, 4), Cmpxfloat(5, 6), Cmpxfloat(7, 8), Cmpxfloat(9, 10), Cmpxfloat(11, 12), Cmpxfloat(13, 14), Cmpxfloat(15, 16),
				Cmpxfloat(17, 18), Cmpxfloat(19, 20), Cmpxfloat(21, 22), Cmpxfloat(23, 24), Cmpxfloat(25, 26), Cmpxfloat(27, 28), Cmpxfloat(29, 30), Cmpxfloat (31,32)};
//	b = a;
	fft_my(a, b, 16);
	return 1;
}




