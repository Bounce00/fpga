
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
//void ifft(int N, Cmpxint f[]); // 傅里叶逆变换  
////////////////////////////////////////////  

//精度0.0001弧度  
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
//傅里叶变化  
void fft_my(Cmpxfloat f_in[N_fft], Cmpxfloat f_out[N_fft], int N)
{
	Cmpxfloat tmp[N_fft];
	for (int ii = 0; ii < N_fft; ii++)
		tmp[ii] = f_in[ii];
	Cmpxfloat Wn_k[4] = { Cmpxfloat(1, 0), Cmpxfloat(0.7071, -0.7071), Cmpxfloat(0, -1), Cmpxfloat(-0.7071, -0.7071) };
	Cmpxfloat t, wn;//中间变量  
	int i, j, k, m, n, l, r, M;
	int la, lb, lc;
	/*----计算分解的级数M=log2(N)----*/
	for (i = N, M = 1; (i = i / 2) != 1; M++);
	/*----按照倒位序重新排列原信号----*/
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

	/*----FFT算法----*/
	for (m = 1; m <= M; m++)
	{
		la = pow(double(2), m); //la=2^m代表第m级每个分组所含节点数       
		lb = la / 2;    //lb代表第m级每个分组所含碟形单元数  
		//同时它也表示每个碟形单元上下节点之间的距离  
		/*----碟形运算----*/
		for (l = 1; l <= lb; l++)
		{
			r = (l - 1)*pow(double(2), M - m);
			for (n = l - 1; n<N - 1; n = n + la) //遍历每个分组，分组总数为N/la  
			{
				lc = n + lb;  //n,lc分别代表一个碟形单元的上、下节点编号       
//				Wn_k(N, r, &wn);//wn=Wnr  
				wn = Wn_k[r];
				c_mul(tmp[lc], wn, &t);//t = tmp[lc] * wn复数运算  
				c_sub(tmp[n], t, &(tmp[lc]));//tmp[lc] = tmp[n] - tmp[lc] * Wnr  
				c_add(tmp[n], t, &(tmp[n]));//tmp[n] = tmp[n] + tmp[lc] * Wnr  
			}
		}
	}
	for (int ii = 0; ii < N_fft; ii++)
		f_out[ii] = tmp[ii];
}
/*
//傅里叶逆变换
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




