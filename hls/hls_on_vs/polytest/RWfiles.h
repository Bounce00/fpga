#ifndef _RWFILES_H
#define _RWFILES_H

#include "poly.h"
#include <fstream>

template <int N_sigi, typename data_T1, typename data_T2>
void  ReadFileVec(char *fp, data_T1 OutBuf[N_sigi])
{
	int i;
	//	int j;
	data_T2 val;

	ifstream fp_strmi(fp);
	if (!fp_strmi.is_open())
	{
		cerr << "Error!\nThis file is unable to open!" << '\n';
	}
	else
	{
		for (i = 0; i<N_sigi; i++)
		{
			fp_strmi >> val;
			OutBuf[i] = data_T1(val);
		}
	}

	fp_strmi.close();
	//	cout << setw(60) << setfill('-') << '-' << '\n';
	cout << "Read file successfully!\n";
	//	cout << setw(60) << setfill('-') << '-' << '\n';
	//	return 1;
}


//complex to file
template <int N_sigo, class cpx_T, class data_T>
void WriteCpxFileVec(char *fp, cpx_T output[N_sigo])
{

	ofstream result;

	// Open a file to save the results
	result.open(fp);
	data_T tmp1;
	data_T tmp2;
	// Apply stimuli, call the top-level function and save the results
	for (int i = 0; i < N_sigo; i++)
	{
		tmp1 = output[i].real();
		tmp2 = output[i].imag();
		result << tmp1;
		result << setw(15) << '\t' << tmp2;
		result << endl;
	}
	result.close();
}



#endif