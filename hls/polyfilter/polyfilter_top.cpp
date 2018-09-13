
#include "poly.h"
#include "fft_top.h"
#include "fir.h"
//#include "param_def.h"


using namespace std;
//#include "fft_top.h"


void polyfilter_top(din_t din,Cmpxfft_out_t fft_out[N_ch])
{
	static ap_uint<1> var_st = 0;
	static ap_uint<4> cnt_dec=15;	//cnt for decimator
	static din_t dec[N_ch];
	static ap_uint<2> cnt_dc=0;		//cnt for down convert:multiply exp(-1i*pi*m/2)   equal to real x(0  -1   0  1),imag x(-1  0  1  0)
	static dc_res_t dc_res[N_ch];	//result of down convert
	static CmpxFirOut_t FirRes[N_ch];		//complex fir output
	CmpxExp_t ExpCoe[N_ch];		//multiply exp(-1i*pi*m/2) before fft

	//debug
//	din_t dec_out[N_col][N_row] = {0};
	static int cnt625 = 0;
	din_t a = 0;

	bool ovflo;
	bool ovflo_all = false;
	bool FWD_INV = 1;		//Forward FFT
	static Cmpxfft_in_t xk_input[N_ch];

	static Cmpxfft_out_t xk_output[N_ch];
	static Cmpxfft_out_t xk_tmp[N_ch];

	FirCoef_t ChanCoe [N_ch][N/N_ch] = {
		{-5,21,3,-84,200,511,170,-85,8,19},
		{0,23,-3,-82,230,507,141,-85,13,17},
		{1,25,-10,-77,260,500,113,-82,17,15},
		{1,26,-17,-70,289,491,86,-79,21,13},
		{2,27,-24,-62,318,478,61,-74,24,11},
		{2,28,-32,-50,347,462,37,-68,26,9},
		{3,29,-40,-37,373,443,16,-62,28,8},
		{5,29,-47,-22,399,422,-4,-55,29,6},
		{6,29,-55,-4,422,399,-22,-47,29,5},
		{8,28,-62,16,443,373,-37,-40,29,3},
		{9,26,-68,37,462,347,-50,-32,28,2},
		{11,24,-74,61,478,318,-62,-24,27,2},
		{13,21,-79,86,491,289,-70,-17,26,1},
		{15,17,-82,113,500,260,-77,-10,25,1},
		{17,13,-85,141,507,230,-82,-3,23,0},
		{19,8,-85,170,511,200,-84, 3,21,-5}};

	ExpCoe[0].real() = 31;
	ExpCoe[0].imag() = 0;
	ExpCoe[1].real() = 31;
	ExpCoe[1].imag() = 3;
	ExpCoe[2].real() = 31;
	ExpCoe[2].imag() = 6;
	ExpCoe[3].real() = 30;
	ExpCoe[3].imag() = 9;
	ExpCoe[4].real() = 29;
	ExpCoe[4].imag() = 12;
	ExpCoe[5].real() = 28;
	ExpCoe[5].imag() = 15;
	ExpCoe[6].real() = 26;
	ExpCoe[6].imag() = 17;
	ExpCoe[7].real() = 24;
	ExpCoe[7].imag() = 20;
	ExpCoe[8].real() = 22;
	ExpCoe[8].imag() = 22;
	ExpCoe[9].real() = 20;
	ExpCoe[9].imag() = 24;
	ExpCoe[10].real() = 17;
	ExpCoe[10].imag() = 26;
	ExpCoe[11].real() = 15;
	ExpCoe[11].imag() = 28;
	ExpCoe[12].real() = 12;
	ExpCoe[12].imag() = 29;
	ExpCoe[13].real() = 9;
	ExpCoe[13].imag() = 30;
	ExpCoe[14].real() = 6;
	ExpCoe[14].imag() = 31;
	ExpCoe[15].real() = 3;
	ExpCoe[15].imag() = 31;

	CmpxMulExp_Cal_t MulExp_Cal[N_ch];
	CmpxResMulExp_t ResMulExp[N_ch];

	ResMulExp_t a1;
	fft_in_t a2;


//-------decimator-----
	dec[cnt_dec] = din;		//抽取后结果

	if((cnt_dec==15)&&(var_st==1))
			cnt_dc ++;
//-------mul exp(-1i*pi*m/2)--------
	switch(cnt_dc)
	{
	case 0:
	{
		dc_res[cnt_dec].real() = dec[cnt_dec];
		dc_res[cnt_dec].imag() = 0;
		break;
	}
	case 1:
	{
		dc_res[cnt_dec].real() = 0;		//防止出现-32768*-1=32768的情况
		dc_res[cnt_dec].imag() = (dec[cnt_dec]*-1==0x8000)?din_t(0x7fff):din_t((dec[cnt_dec]*-1));
		break;
	}
	case 2:
	{
		dc_res[cnt_dec].real() = (dec[cnt_dec]*-1==0x8000)?din_t(0x7fff):din_t((dec[cnt_dec]*-1));
		dc_res[cnt_dec].imag() = 0;
		break;
	}
	case 3:
	{
		dc_res[cnt_dec].real() = 0;
		dc_res[cnt_dec].imag() = dec[cnt_dec];
		break;
	}
	default:
	{
		dc_res[cnt_dec].real() = 0;
		dc_res[cnt_dec].imag() = 0;
	}
	}



	//--------filter-------------
	filter:
	switch(cnt_dec)
	{
	case 0:
	{
		fir0_I(&FirRes[0].real(),ChanCoe[0],dc_res[0].real());
		fir0_Q(&FirRes[0].imag(),ChanCoe[0],dc_res[0].imag());
		break;
	}
	case 1:
	{
		fir1_I(&FirRes[1].real(),ChanCoe[1],dc_res[1].real());
		fir1_Q(&FirRes[1].imag(),ChanCoe[1],dc_res[1].imag());
		break;
	}
	case 2:
	{
		fir2_I(&FirRes[2].real(),ChanCoe[2],dc_res[2].real());
		fir2_Q(&FirRes[2].imag(),ChanCoe[2],dc_res[2].imag());
		break;
	}
	case 3:
	{
		fir3_I(&FirRes[3].real(),ChanCoe[3],dc_res[3].real());
		fir3_Q(&FirRes[3].imag(),ChanCoe[3],dc_res[3].imag());
		break;
	}
	case 4:
	{
		fir4_I(&FirRes[4].real(),ChanCoe[4],dc_res[4].real());
		fir4_Q(&FirRes[4].imag(),ChanCoe[4],dc_res[4].imag());
		break;
	}
	case 5:
	{
		fir5_I(&FirRes[5].real(),ChanCoe[5],dc_res[5].real());
		fir5_Q(&FirRes[5].imag(),ChanCoe[5],dc_res[5].imag());
		break;
	}
	case 6:
	{
		fir6_I(&FirRes[6].real(),ChanCoe[6],dc_res[6].real());
		fir6_Q(&FirRes[6].imag(),ChanCoe[6],dc_res[6].imag());
		break;
	}
	case 7:
	{
		fir7_I(&FirRes[7].real(),ChanCoe[7],dc_res[7].real());
		fir7_Q(&FirRes[7].imag(),ChanCoe[7],dc_res[7].imag());
		break;
	}
	case 8:
	{
		fir8_I(&FirRes[8].real(),ChanCoe[8],dc_res[8].real());
		fir8_Q(&FirRes[8].imag(),ChanCoe[8],dc_res[8].imag());
		break;
	}
	case 9:
	{
		fir9_I(&FirRes[9].real(),ChanCoe[9],dc_res[9].real());
		fir9_Q(&FirRes[9].imag(),ChanCoe[9],dc_res[9].imag());
		break;
	}
	case 10:
	{
		fir10_I(&FirRes[10].real(),ChanCoe[10],dc_res[10].real());
		fir10_Q(&FirRes[10].imag(),ChanCoe[10],dc_res[10].imag());
		break;
	}
	case 11:
	{
		fir11_I(&FirRes[11].real(),ChanCoe[11],dc_res[11].real());
		fir11_Q(&FirRes[11].imag(),ChanCoe[11],dc_res[11].imag());
		break;
	}
	case 12:
	{
		fir12_I(&FirRes[12].real(),ChanCoe[12],dc_res[12].real());
		fir12_Q(&FirRes[12].imag(),ChanCoe[12],dc_res[12].imag());
		break;
	}
	case 13:
	{
		fir13_I(&FirRes[13].real(),ChanCoe[13],dc_res[13].real());
		fir13_Q(&FirRes[13].imag(),ChanCoe[13],dc_res[13].imag());
		break;
	}
	case 14:
	{
		fir14_I(&FirRes[14].real(),ChanCoe[14],dc_res[14].real());
		fir14_Q(&FirRes[14].imag(),ChanCoe[14],dc_res[14].imag());
		break;
	}
	case 15:
	{
		fir15_I(&FirRes[15].real(),ChanCoe[15],dc_res[15].real());
		fir15_Q(&FirRes[15].imag(),ChanCoe[15],dc_res[15].imag());
		break;
	}
	default:
	{
		fir0_I(&FirRes[cnt_dec].real(),ChanCoe[cnt_dec],dc_res[cnt_dec].real());
		fir0_Q(&FirRes[cnt_dec].imag(),ChanCoe[cnt_dec],dc_res[cnt_dec].imag());
	}
	}

	CmpxFirOut_t tmp;
	tmp.real() = FirRes[cnt_dec].real();
	tmp.imag() = FirRes[cnt_dec].imag();
	MulExp_Cal_t pc,pr,pi;
	pc = ExpCoe[cnt_dec].imag()*(tmp.real()-tmp.imag());
	pr = pc + tmp.real()*(ExpCoe[cnt_dec].real()-ExpCoe[cnt_dec].imag());
	pi = pc + tmp.imag()*(ExpCoe[cnt_dec].real()+ExpCoe[cnt_dec].imag());
	MulExp_Cal[cnt_dec].real() = pr;
	MulExp_Cal[cnt_dec].imag() = pi;
	//--------multiply  exp(-1i*pi*m/2) before fft
//	MulExp_Cal[cnt_dec] = CmpxMulExp_Cal_t(FirRes[cnt_dec]) * CmpxMulExp_Cal_t(ExpCoe[cnt_dec]);

	ResMulExp[cnt_dec].real() = MulExp_Cal[cnt_dec].real()>>(MulExp_Cal_WIDTH-MulExp_O_WIDTH);
	ResMulExp[cnt_dec].imag() = MulExp_Cal[cnt_dec].imag()>>(MulExp_Cal_WIDTH-MulExp_O_WIDTH);

	//-------fft---------
	//Adjust the position of the decimal point
	xk_input[cnt_dec].real()(15,0) = ResMulExp[cnt_dec].real()(15,0);
	xk_input[cnt_dec].imag()(15,0) = ResMulExp[cnt_dec].imag()(15,0);
//	a1 = ResMulExp[cnt_dec].real();
//	a2 = xk_input[cnt_dec].real();

/*

	if(cnt_dec==0)
	{
		fft_top(FWD_INV, xk_input, xk_output, &ovflo);
//		xk_tmp[0] = xk_output[0];
//		fft_assign:
//		for(int ii=1;ii<=15;ii++)
//			xk_tmp[ii] = xk_output[16-ii];
	}
*/
	fft_out = xk_output;
	ovflo_all |= ovflo;

	cnt_dec--;
	var_st = 1;
	if(cnt_dec==15)
		cnt625++;
}
