
#include "poly.h"


CmpxExp_coef1_t phase_dc[N_phase] = { CmpxExp_coef1_t(1, 0), CmpxExp_coef1_t(0, -1), CmpxExp_coef1_t(-1, 0), CmpxExp_coef1_t(0, 1) };	//下变频系数


CmpxExp_coef2_t phase_exp[N_channel] = { CmpxExp_coef2_t(31, 0), CmpxExp_coef2_t(31, 3), CmpxExp_coef2_t(31, 6), CmpxExp_coef2_t(30, 9), CmpxExp_coef2_t(29, 12), \
CmpxExp_coef2_t(28, 15), CmpxExp_coef2_t(26, 17), CmpxExp_coef2_t(24, 20), CmpxExp_coef2_t(22, 22), CmpxExp_coef2_t(20, 24), \
CmpxExp_coef2_t(17, 26), CmpxExp_coef2_t(15, 28), CmpxExp_coef2_t(12, 29), CmpxExp_coef2_t(9, 30), CmpxExp_coef2_t(6, 31), CmpxExp_coef2_t(3, 31) };  //fft前乘的系数


//Fir系数   160阶滤波器  fs=1200MHz,fpass=18.75e6 ,fstop=37.5e6
Fir_coef_t FirCoe[N_channel][N / N_channel] = {
	{ -5, 21, 3, -84, 200, 511, 170, -85, 8, 19 }, \
	{ 0, 23, -3, -82, 230, 507, 141, -85, 13, 17 }, \
	{ 1, 25, -10, -77, 260, 500, 113, -82, 17, 15 }, \
	{ 1, 26, -17, -70, 289, 491, 86, -79, 21, 13 }, \
	{ 2, 27, -24, -62, 318, 478, 61, -74, 24, 11 }, \
	{ 2, 28, -32, -50, 347, 462, 37, -68, 26, 9 }, \
	{ 3, 29, -40, -37, 373, 443, 16, -62, 28, 8 }, \
	{ 5, 29, -47, -22, 399, 422, -4, -55, 29, 6 }, \
	{ 6, 29, -55, -4, 422, 399, -22, -47, 29, 5 }, \
	{ 8, 28, -62, 16, 443, 373, -37, -40, 29, 3 }, \
	{ 9, 26, -68, 37, 462, 347, -50, -32, 28, 2 }, \
	{ 11, 24, -74, 61, 478, 318, -62, -24, 27, 2 }, \
	{ 13, 21, -79, 86, 491, 289, -70, -17, 26, 1 }, \
	{ 15, 17, -82, 113, 500, 260, -77, -10, 25, 1 }, \
	{ 17, 13, -85, 141, 507, 230, -82, -3, 23, 0 }, \
	{ 19, 8, -85, 170, 511, 200, -84, 3, 21, -5 } };

//在构造函数中将两个模块的系数相乘，由于FIR是线性的，因此可以将后面乘的系数提到前面来
template<uint N_ch, uint N_pha>
IQMUL_coef<N_ch, N_pha>::IQMUL_coef()
{
	for (int i = 0; i < N_pha; i++)
	{
		for (int j = 0; j < N_ch; j++)
		{
			Exp_coef2_t re = phase_dc[i].real()*phase_exp[j].real() - phase_dc[i].imag()*phase_exp[j].imag();
			Exp_coef2_t im = phase_dc[i].real()*phase_exp[j].imag() + phase_dc[i].imag()*phase_exp[j].real();
			v_iq_mul[j][i] = CmpxExp_coef2_t(re, im);
		}

	}
}

template<uint N_ch, uint N_pha>
CmpxExp_coef2_t IQMUL_coef<N_ch, N_pha>::get(uint i, uint j) const  //i表示通道，j表示相位
{
	return v_iq_mul[i][j];
}


//--------------------------------------------------------------------------



template<typename T_in, typename T_out, uint N_ch, uint N_pha>
PFMul<T_in, T_out, N_ch, N_pha>::PFMul()
{
	i_ = 0;
}

template<typename T_in, typename T_out, uint N_ch, uint N_pha>
void PFMul<T_in, T_out, N_ch, N_pha>::run(T_in din[N_ch], T_out dout[N_ch])
{
	for (int i = 0; i < N_ch; i++)
	{
		CmpxExp_coef2_t v_mul = iqmulcoef_.get(i, i_);
		dout[i] = T_out(din[i] * v_mul.real(), din[i] * v_mul.imag());
	}
	i_ = (i_ + 1) & 0x03;
}

//------------------------------------------------------------


//在构造函数中，将FIR系数读入
template<uint N_ch, uint N_len>
FIR_coef<N_ch, N_len>::FIR_coef()
{
	for (int i = 0; i < N_ch; i++)
	for (int j = 0; j < N_len; j++)
		v_FirCoe[i][j] = FirCoe[i][j];
}

template<uint N_ch, uint N_len>
Fir_coef_t FIR_coef<N_ch, N_len>::get(uint i, uint j) const
{
	return v_FirCoe[i][j];
}
//--------------------------------------------------------------


template<typename T_in, typename T_out, uint N_ch, uint N_len>
PF_FIR<T_in, T_out, N_ch, N_len>::PF_FIR()
{
	for (int i = 0; i < N_ch; i++)
	for (int j = 0; j < N_len; j++)
		ShiftReg[i][j] = T_in(0, 0);
}


template<typename T_in, typename T_out, uint N_ch, uint N_len>
void PF_FIR<T_in, T_out, N_ch, N_len>::run(T_in din[N_ch], T_out dout[N_ch])
{
	for (int i = 0; i < N_ch; i++)
	{
		T_out acc = T_out(0, 0);
		for (int j = 0; j < N_len - 1; j++)
		{
			ShiftReg[i][j] = ShiftReg[i][j + 1];
		}

		ShiftReg[i][N_len - 1] = din[i];
		for (int k = 0; k < N_len; k++)
		{
			Fir_coef_t coe = fircoef_.get(i, k);
			acc += T_out(coe*ShiftReg[i][N_len - k - 1].real(), coe*ShiftReg[i][N_len - k - 1].imag());
		}
		dout[i] = acc;
	}
}


void polyfilter_top(pf_din_t indata[N_channel], CmpxCal_Fir_t outdata[N_channel])
{
#pragma HLS DATA_PACK variable=outdata
#pragma HLS ARRAY_PARTITION variable=outdata dim=1
#pragma HLS DATA_PACK variable=indata
#pragma HLS ARRAY_PARTITION variable=indata dim=1
#pragma HLS PIPELINE II=1

	static PFMul<pf_din_t, CmpxCal_mul_t, N_channel, N_phase>iqmul_inst;
	static PF_FIR<CmpxCal_mul_t, CmpxCal_Fir_t, N_channel, N / N_channel>fir_inst;

	CmpxCal_mul_t mul_out[N_channel];
	iqmul_inst.run(indata, mul_out);
	fir_inst.run(mul_out, outdata);
}
