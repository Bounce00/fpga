
#include "poly.h"
/*
extern CmpxExp_coef1_t phase_dc[4];
extern CmpxExp_coef2_t phase_exp[16];
extern Fir_coef_t FirCoe[N_channel][N / N_channel];
*/

CmpxExp_coef1_t phase_dc[4] = { CmpxExp_coef1_t(1, 0), CmpxExp_coef1_t(0, -1), CmpxExp_coef1_t(-1, 0), CmpxExp_coef1_t(0, 1) };	//下变频系数

/*
CmpxExp_coef1_t get_phase_dc(uint i)
{
	return phase_dc[i];
}
*/
CmpxExp_coef1_t phase_exp[16] = { CmpxExp_coef2_t(31, 0), CmpxExp_coef2_t(31, 3), CmpxExp_coef2_t(31, 6), CmpxExp_coef2_t(30, 9), CmpxExp_coef2_t(29, 12), \
CmpxExp_coef2_t(28, 15), CmpxExp_coef2_t(26, 17), CmpxExp_coef2_t(24, 20), CmpxExp_coef2_t(22, 22), CmpxExp_coef2_t(20, 24), \
CmpxExp_coef2_t(17, 26), CmpxExp_coef2_t(15, 28), CmpxExp_coef2_t(12, 29), CmpxExp_coef2_t(9, 30), CmpxExp_coef2_t(6, 31), CmpxExp_coef2_t(3, 31) };  //fft前乘的系数

/*
CmpxExp_coef2_t get_phase_exp(uint i)
{
	return phase_exp[i];
}*/
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
/*
Fir_coef_t get_FirCoe(uint i, uint j)
{
	return FirCoe[i][j];
}*/
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
void PFMul<T_in, T_out, N_ch, N_pha>::run(T_in *din, T_out *dout)
{
	for (int i = 0; i < N_ch; i++)
	{
		CmpxExp_coef2_t v_mul = iqmulcoef_.get(i,i_);
		dout[i] = T_out(din[i] * v_mul.real(), din[i] * v_mul.imag());
	}
	i_ = (i_ + 1) & 0x03;
}

//------------------------------------------------------------


//在构造函数中，将FIR系数读入
template<uint N_ch, uint N_len>
FIR_coef<N_ch, N_len>::FIR_coef()
{
	for (int i = 0; i < N_ch;i++)
		for (int j = 0; j < N_len;j++)
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
			ShiftReg[i][j] = (0, 0);
}


template<typename T_in, typename T_out, uint N_ch, uint N_len>
void PF_FIR<T_in, T_out, N_ch, N_len>::run(T_in *din, T_out *dout)
{
	for (int i = 0; i < N_ch; i++)
	{
		T_out acc = (0, 0);
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

//---在构造函数中，定义Wn-----

template<typename T_in_c, typename T_in_r, typename T_out, uint N_ch>
void fft16<T_in_c, T_in_r, T_out, N_ch>::c_mul(T_in_c a, T_in_c b, T_out *c)
{
	T_in_r re = a.real()*b.real() - a.imag()*b.imag();
	T_in_r im = a.real()*b.imag() + a.imag()*b.real();
	*c = T_in_c(re, im);
}

template<typename T_in_c, typename T_in_r, typename T_out, uint N_ch>
void fft16<T_in_c, T_in_r, T_out, N_ch>::c_add(T_in_c a, T_in_c b, T_out *c)
{
	T_in_r re = a.real() + b.real();
	T_in_r im = a.imag() + b.imag();
	*c = T_in_c(re, im);
}

template<typename T_in_c, typename T_in_r, typename T_out, uint N_ch>
void fft16<T_in_c, T_in_r, T_out, N_ch>::c_sub(T_in_c a, T_in_c b, T_out *c)
{
	T_in_r re = a.real() - b.real();
	T_in_r im = a.imag() - b.imag();
	*c = T_in_c(re, im);
}
//------FFT---------
template<typename T_in_c, typename T_in_r, typename T_out, uint N_ch>
void fft16<T_in_c, T_in_r, T_out, N_ch>::run(T_in_c *din, T_out *dout)
{
	T_in_c tmp[N_ch];
	for (int ii = 0; ii < N_ch; ii++)	//inverse input
	{
		switch (ii)
		{
		case(0) : {tmp[ii] = din[0];  break; }
		case(1) : {tmp[ii] = din[8]; break; }
		case(2) : {tmp[ii] = din[4]; break; }
		case(3) : {tmp[ii] = din[12]; break; }
		case(4) : {tmp[ii] = din[2]; break; }
		case(5) : {tmp[ii] = din[10]; break; }
		case(6) : {tmp[ii] = din[6]; break; }
		case(7) : {tmp[ii] = din[14]; break; }
		case(8) : {tmp[ii] = din[1];  break; }
		case(9) : {tmp[ii] = din[9]; break; }
		case(10) : {tmp[ii] = din[5]; break; }
		case(11) : {tmp[ii] = din[13]; break; }
		case(12) : {tmp[ii] = din[3]; break; }
		case(13) : {tmp[ii] = din[11]; break; }
		case(14) : {tmp[ii] = din[7]; break; }
		case(15) : {tmp[ii] = din[15]; break; }
		default:  {tmp[ii] = 0;	break; }
		}
	}


	T_in_c t;//中间变量  
	int  m, M;
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
	for (int ii = 0; ii < N_ch; ii++)
		dout[ii] = tmp[ii];
}


void polyfilter_top(pf_din_t *indata, CmpxCal_Fir_t *outdata)
{
	static PFMul<pf_din_t, CmpxCal_mul_t, N_channel, N_phase>iqmul_inst;
	static PF_FIR<CmpxCal_mul_t, CmpxCal_Fir_t, N_channel, N / N_channel>fir_inst;
//	static fft16<Cmpxfft_t, fft_t, Cmpxfft_t, N_channel> fft_inst;

	CmpxCal_mul_t mul_out[N_channel];
	CmpxCal_Fir_t fir_out[N_channel];
	iqmul_inst.run(indata, mul_out);
	fir_inst.run(mul_out, outdata);
//	fft_inst.run(fir_out, outdata);

}
