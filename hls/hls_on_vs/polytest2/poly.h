#ifndef _POLY_H
#define _POLY_H

/*
AD 位宽：10 bits
乘exp系数后：仿真结果为15 bits有符号数，截取10 bits有符号数
FIR后：仿真结果为19 bits有符号数，截取16 bits有符号数
*/
#include <complex>
#include <iostream>


#include <ap_fixed.h>
#include <ap_int.h>
#include <cmath>

using namespace std;

typedef unsigned int uint;
typedef ap_fixed<10, 10> pf_din_t;		//输入信号数据类型
typedef ap_fixed<16, 16> Cal_mul_t;			//乘exp之后的数据类型
typedef ap_fixed<10, 10> Res_mul_t;			//乘exp又截位后的数据类型
typedef std::complex<Cal_mul_t> CmpxCal_mul_t;	//cal_mul_t的复数类型
typedef std::complex<Res_mul_t> CmpxRes_mul_t;	//res_mul_t的复数类型
typedef ap_fixed<25, 25> Cal_Fir_t;		//fir后的数据类型
typedef std::complex<Cal_Fir_t> CmpxCal_Fir_t; //fir后的复数类型

typedef ap_fixed<2, 2> Exp_coef1_t;    //exp1系数
typedef std::complex<Exp_coef1_t> CmpxExp_coef1_t;
typedef ap_fixed<6, 6> Exp_coef2_t;		//exp系数
typedef std::complex<Exp_coef2_t> CmpxExp_coef2_t;

typedef ap_fixed<10, 10> Fir_coef_t;

#define N_channel 16
#define N 160
#define N_phase 4
/*
CmpxExp_coef1_t get_phase_dc(uint i);
CmpxExp_coef2_t get_phase_exp(uint i);
Fir_coef_t get_FirCoe(uint i, uint j);
*/
//-------读入exp系数-----------
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


void polyfilter_top(pf_din_t indata[N_channel], CmpxCal_Fir_t outdata[N_channel]);


#endif
