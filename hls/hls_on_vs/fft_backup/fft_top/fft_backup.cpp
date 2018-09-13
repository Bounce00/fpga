
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
/*
void conjugate_complex(int n, complex in[], complex out[])
{
int i = 0;
for (i = 0; i<n; i++)
{
out[i].imag = -in[i].imag;
out[i].real = in[i].real;
}
}
*/

//#define SWAP(a,b)  tempr=(a);(a)=(b);(b)=tempr  
/*
void Wn_k(int n, int k, Cmpxfloat *Wn)
{
	*Wn = Cmpxfloat(cos(2 * PI*k / n), -sin(2 * PI*k / n));
}
*/


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
	for (int ii = 0; ii < N_fft; ii++)
		tmp[ii] = f_in[ii];
	Cmpxfloat Wn_k[4] = { Cmpxfloat(1, 0), Cmpxfloat(0.7071, -0.7071), Cmpxfloat(0, -1), Cmpxfloat(-0.7071, -0.7071) };
	Cmpxfloat t, wn;//�м����  
	int i, j, k, m, n, l, r, M;
	int la, lb, lc;
	/*----����ֽ�ļ���M=log2(N)----*/
	for (i = N, M = 1; (i = i / 2) != 1; M++);
	/*----���յ�λ����������ԭ�ź�----*/
	for (i = 1, j = N / 2; i <= N - 2; i++)
	{
		if (i<j)
		{
			t = tmp[j];
			tmp[j] = tmp[i];
			tmp[i] = t;
		}
		k = N / 2;
		while (k <= j)
		{
			j = j - k;
			k = k / 2;
		}
		j = j + k;
	}

	/*----FFT�㷨----*/
	for (m = 1; m <= M; m++)
	{
		la = pow(double(2), m); //la=2^m�����m��ÿ�����������ڵ���       
		lb = la / 2;    //lb�����m��ÿ�������������ε�Ԫ��  
		//ͬʱ��Ҳ��ʾÿ�����ε�Ԫ���½ڵ�֮��ľ���  
		/*----��������----*/
		for (l = 1; l <= lb; l++)
		{
			r = (l - 1)*pow(double(2), M - m);
			for (n = l - 1; n<N - 1; n = n + la) //����ÿ�����飬��������ΪN/la  
			{
				lc = n + lb;  //n,lc�ֱ����һ�����ε�Ԫ���ϡ��½ڵ���       
//				Wn_k(N, r, &wn);//wn=Wnr  
				wn = Wn_k[r];
				c_mul(tmp[lc], wn, &t);//t = tmp[lc] * wn��������  
				c_sub(tmp[n], t, &(tmp[lc]));//tmp[lc] = tmp[n] - tmp[lc] * Wnr  
				c_add(tmp[n], t, &(tmp[n]));//tmp[n] = tmp[n] + tmp[lc] * Wnr  
			}
		}
	}
	for (int ii = 0; ii < N_fft; ii++)
		f_out[ii] = tmp[ii];
}
/*
//����Ҷ��任
void ifft(int N, complex f[])
{
int i = 0;
conjugate_complex(N, f, f);
fft(N, f);
conjugate_complex(N, f, f);
for (i = 0; i<N; i++)
{
f[i].imag = (f[i].imag) / N;
f[i].real = (f[i].real) / N;
}
}
*/
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




