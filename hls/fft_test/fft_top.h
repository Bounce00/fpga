//16-point FFT
#ifndef _FFT_TOP_H
#define _FFT_TOP_H


#include <complex>
#include <iostream>

#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>

using namespace std;

#define N_channel 16

typedef ap_int<8> uint;
typedef ap_fixed<16,1> fft_in_t;
typedef std::complex<fft_in_t> Cmpxfft_in_t;
typedef ap_fixed<16,1> fft_out_t;
typedef std::complex<fft_out_t> Cmpxfft_out_t;
typedef ap_fixed<16,1> Butterfly_t;
typedef std::complex<Butterfly_t> CmpxButterfly_t;

//----inverse input signal----
template<uint N_ch>
class Ivs
{
public:
	Ivs();
	void get_order() const;
};
//----4 stage calculate-----
//-------1st stage-----------
template<uint N_ch, uint N_pha>		//N_ch表示通道数，N_pha表示相位数
class IQMUL_coef
{
public:
	IQMUL_coef();
	CmpxExp_coef2_t get(uint i, uint j) const;
private:
	CmpxExp_coef2_t v_iq_mul[N_ch][N_pha];
};



//-------与exp系数进行乘处理-----------
template<typename T_in, typename T_out, uint N_ch, uint N_pha>
class PFMul
{
public:
	PFMul();
	void run(T_in din[N_ch], T_out dout[N_ch]);
private:
	uint i_;			//输入数据计数
	IQMUL_coef<N_ch, N_pha> iqmulcoef_;
};

//----------读入FIR系数-------------
template<uint N_ch, uint N_len>
class FIR_coef
{
public:
	FIR_coef();
	Fir_coef_t get(uint i, uint j) const;
private:
	Fir_coef_t v_FirCoe[N_ch][N_len];
};


//---------FIR滤波-----------
template<typename T_in, typename T_out, uint N_ch, uint N_len>		//N_ch为通道数，N_len表示每个通道的FIR系数个数
class PF_FIR
{
public:
	PF_FIR();
	void run(T_in din[N_ch], T_out dout[N_ch]);
private:
	const FIR_coef<N_ch, N_len> fircoef_;
	T_in ShiftReg[N_ch][N_len];
};

//---------fft--------
template<typename T_in, typename T_out>
class PF_FFT
{
public:
//	PF_FFT();
	void dummy_proc_fe(bool direction,config_t* config, T_in in[FFT_LENGTH],T_in out[FFT_LENGTH]);
	void dummy_proc_be(status_t* status_in,bool* ovflo,T_out in[FFT_LENGTH],T_out out[FFT_LENGTH]);
	void run(bool direction,T_in in[FFT_LENGTH],T_out out[FFT_LENGTH],bool* ovflo);
};

void polyfilter_top(pf_din_t indata[N_channel], Cmpxfft_out_t outdata[N_channel]);


#endif
