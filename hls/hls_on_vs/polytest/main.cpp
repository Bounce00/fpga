
#include "poly.h"
#include "RWfiles.h"


int main()
{
	
	pf_din_t sig[16][65] = { 0 };

	CmpxCal_Fir_t fir_out[16];
	

	const int N_sig = 10000;
	char *fa = "sig_src.txt";



	pf_din_t tb_in[N_sig] = { 0 };
	ReadFileVec<N_sig, pf_din_t, int>(fa, tb_in);
	int idx = 0;
	for (int ii = 0; ii < 65; ii++)
	{
		for (int jj = 15; jj >= 0; jj--)
		{
			sig[jj][ii] = tb_in[idx];
			idx++;
		}

	}

	pf_din_t invect[16];
	for (int i = 0; i < 65; i++)
	{
		for (int j = 0; j < 16; j++)
		{
			invect[j] = sig[j][i];
		}

		polyfilter_top(invect, fir_out);
	}


	return 0;
}