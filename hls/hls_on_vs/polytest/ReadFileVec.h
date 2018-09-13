
#ifndef _READFILEVEC_H
#define _READFILEVEC_H

//template function

#include <iostream>
#include <fstream>

using namespace std;
using std::cerr;
using std::cout;
//using std::setw;
//using std::setfill;
using std::ifstream;



template <int N, typename Tm, typename Tv>
void ReadFileVec(char *fp, Tm OutBuf[N])
{
	int i;
	int j;
	Tv val;


	ifstream fa_strmi(fp);
	if (!fp_strmi.is_open())
	{
		cerr << "Error!\nThis file is unable to open!" << '\n';
	}
	else
	{
		for (i = 0; i<N; i++)
		{
			fp_strmi >> val;
			OutBuf[i] = val;
		}

	}

	fp_strmi.close();
//	cout << setw(60) << setfill('-') << '-' << '\n';
	cout << "Read file successfully!\n";
//		cout << setw(60) << setfill('-') << '-' << '\n';
}



#endif
