#ifndef _POLY_H
#define _POLY_H

/*
AD λ��10 bits
��expϵ���󣺷�����Ϊ15 bits�з���������ȡ10 bits�з�����
FIR�󣺷�����Ϊ19 bits�з���������ȡ16 bits�з�����
*/
#include <complex>
#include <iostream>

/*
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
*/
using namespace std;

typedef unsigned int uint;
typedef int pf_din_t;		//�����ź���������
typedef int Cal_mul_t;			//��exp֮�����������
typedef int Res_mul_t;			//��exp�ֽ�λ�����������
typedef std::complex<Cal_mul_t> CmpxCal_mul_t;	//cal_mul_t�ĸ�������
typedef std::complex<Res_mul_t> CmpxRes_mul_t;	//res_mul_t�ĸ�������
typedef int Cal_Fir_t;		//fir�����������
typedef std::complex<Cal_Fir_t> CmpxCal_Fir_t; //fir��ĸ�������

typedef int Exp_coef1_t;    //exp1ϵ��
typedef std::complex<Exp_coef1_t> CmpxExp_coef1_t;
typedef  int Exp_coef2_t;		//expϵ��
typedef std::complex<Exp_coef2_t> CmpxExp_coef2_t;

typedef int Fir_coef_t;

typedef float fft_Wn_t;
typedef std::complex<fft_Wn_t> Cmpxfft_Wn_t;
typedef float fft_t;
typedef std::complex<fft_t> Cmpxfft_t;

#define N_channel 16
#define N 160
#define N_phase 4
/*
CmpxExp_coef1_t get_phase_dc(uint i);
CmpxExp_coef2_t get_phase_exp(uint i);
Fir_coef_t get_FirCoe(uint i, uint j);
*/
//-------����expϵ��-----------
template<uint N_ch, uint N_pha>		//N_ch��ʾͨ������N_pha��ʾ��λ��
class IQMUL_coef
{
public:
	IQMUL_coef();
	CmpxExp_coef2_t get(uint i, uint j) const;
private:
	CmpxExp_coef2_t v_iq_mul[N_ch][N_pha];
};



//-------��expϵ�����г˴���-----------
template<typename T_in, typename T_out, uint N_ch, uint N_pha>
class PFMul
{
public:
	PFMul();
	void run(T_in *din, T_out *dout);
private:
	uint i_;			//�������ݼ���
	IQMUL_coef<N_ch, N_pha> iqmulcoef_;
};

//----------����FIRϵ��-------------
template<uint N_ch, uint N_len>
class FIR_coef
{
public:
	FIR_coef();
	Fir_coef_t get(uint i, uint j) const;
private:
	Fir_coef_t v_FirCoe[N_ch][N_len];
};


//---------FIR�˲�-----------
template<typename T_in, typename T_out, uint N_ch, uint N_len>		//N_chΪͨ������N_len��ʾÿ��ͨ����FIRϵ������
class PF_FIR
{
public:
	PF_FIR();
	void run(T_in *din, T_out *dout);
private:
	const FIR_coef<N_ch, N_len> fircoef_;
	T_in ShiftReg[N_ch][N_len];
};

//------define Wn--------
template<uint N_ch>
class fft_Wn
{
public:
	fft_Wn();
	Cmpxfft_Wn_t get(uint i) const;
private:
	Cmpxfft_Wn_t v_fft_Wn[N_ch];
};
//------FFT---------
template<typename T_in_c, typename T_in_r, typename T_out, uint N_ch>
class fft16
{
public:
	fft16();
	void run(T_in_c *din, T_out *dout);
	void c_mul(T_in_c a, T_in_c b, T_out *c);
	void c_add(T_in_c a, T_in_c b, T_out *c);
	void c_sub(T_in_c a, T_in_c b, T_out *c);
private:
	const Cmpxfft_Wn_t Wn_k[8] = { Cmpxfft_Wn_t(1.0f, 0.0f), Cmpxfft_Wn_t(0.92388f, -0.38268f), Cmpxfft_Wn_t(0.70711f, -0.70711f), Cmpxfft_Wn_t(0.38268f, -0.92388f),
									Cmpxfft_Wn_t(0, -1.0f), Cmpxfft_Wn_t(-0.38268, -0.92388f), Cmpxfft_Wn_t(-0.70711f, -0.70711f), Cmpxfft_Wn_t(-0.92388f, -0.38268f) };
};


void polyfilter_top(pf_din_t *indata, CmpxCal_Fir_t *outdata);


#endif