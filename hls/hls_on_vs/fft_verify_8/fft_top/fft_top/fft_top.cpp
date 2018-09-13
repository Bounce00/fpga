
#include <iostream>
#include <cmath>
#include <complex>

using namespace std;

#define PI 3.1415926535897932384626433832795028841971  
#define N_fft 8

typedef std::complex<int> Cmpxint;
typedef std::complex<float>Cmpxfloat;

///////////////////////////////////////////  
void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N_len);
//void ifft(int N, Cmpxint f[]); // ����Ҷ��任  
////////////////////////////////////////////  

//����0.0001����  

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
//����Ҷ�仯  

void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N)
{
	Cmpxfloat tmp[N_fft];
	for (int ii = 0; ii < N_fft; ii++)	//inverse input
	{
		switch (ii)
		{
		case(0) : { tmp[ii] = f_in[0];  break; }
		case(1) : {tmp[ii] = f_in[4]; break; }
		case(2) : {tmp[ii] = f_in[2]; break; }
		case(3) : {tmp[ii] = f_in[6]; break; }
		case(4) : {tmp[ii] = f_in[1]; break; }
		case(5) : {tmp[ii] = f_in[5]; break;	}
		case(6) : {tmp[ii] = f_in[3]; break; }
		case(7) : {tmp[ii] = f_in[7]; break; }
		default: {tmp[ii] = 0;	break; }
		}
	}

	Cmpxfloat Wn_k[4] = { Cmpxfloat(1.0f, 0.0f), Cmpxfloat(0.7071f, -0.7071f), Cmpxfloat(0.0f, -1.0f), Cmpxfloat(-0.7071f, -0.7071f) };
	Cmpxfloat t, wn;//�м����  
	int  m,  M;
	/*----����ֽ�ļ���M=log2(N)----*/
	M = 3;
	/*----FFT�㷨----*/
	for (m = 1; m <= M; m++)
	{
		switch (m)
		{
		case(1) :
		{
					c_mul(tmp[1], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[1]);
					c_add(tmp[0], t, &tmp[0]);
					
					c_mul(tmp[3], Wn_k[0], &t);
					c_sub(tmp[2], t, &tmp[3]);
					c_add(tmp[2], t, &tmp[2]);
					
					c_mul(tmp[5], Wn_k[0], &t);
					c_sub(tmp[4], t, &tmp[5]);
					c_add(tmp[4], t, &tmp[4]);
					
					c_mul(tmp[7], Wn_k[0], &t);
					c_sub(tmp[6], t, &tmp[7]);
					c_add(tmp[6], t, &tmp[6]);
					
					break;
		}
		case(2) :
		{
					c_mul(tmp[2], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[2]);
					c_add(tmp[0], t, &tmp[0]);

					c_mul(tmp[3], Wn_k[2], &t);
					c_sub(tmp[1], t, &tmp[3]);
					c_add(tmp[1], t, &tmp[1]);

					c_mul(tmp[6], Wn_k[0], &t);
					c_sub(tmp[4], t, &tmp[6]);
					c_add(tmp[4], t, &tmp[4]);

					c_mul(tmp[7], Wn_k[2], &t);
					c_sub(tmp[5], t, &tmp[7]);
					c_add(tmp[5], t, &tmp[5]);
					break;
		}
		case(3) :
		{
					c_mul(tmp[4], Wn_k[0], &t);
					c_sub(tmp[0], t, &tmp[4]);
					c_add(tmp[0], t, &tmp[0]);

					c_mul(tmp[5], Wn_k[1], &t);
					c_sub(tmp[1], t, &tmp[5]);
					c_add(tmp[1], t, &tmp[1]);
					
					c_mul(tmp[6], Wn_k[2], &t);
					c_sub(tmp[2], t, &tmp[6]);
					c_add(tmp[2], t, &tmp[2]);
					
					c_mul(tmp[7], Wn_k[3], &t);
					c_sub(tmp[3], t, &tmp[7]);
					c_add(tmp[3], t, &tmp[3]);
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
	Cmpxfloat b[8];
	Cmpxfloat a[8] = { Cmpxfloat(1, 2), Cmpxfloat(3, 4), Cmpxfloat(5, 6), Cmpxfloat(7, 8), Cmpxfloat(9, 10), Cmpxfloat(11, 12), Cmpxfloat(13, 14), Cmpxfloat(15, 16) };
//		Cmpxfloat(17, 18), Cmpxfloat(19, 20), Cmpxfloat(21, 22), Cmpxfloat(23, 24), Cmpxfloat(25, 26), Cmpxfloat(27, 28), Cmpxfloat(29, 30), Cmpxfloat (31,32)};
//	b = a;
	fft_my(a, b, 8);
	return 1;
}




