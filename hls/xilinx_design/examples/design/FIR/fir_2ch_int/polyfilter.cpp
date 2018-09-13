
#include "poly.h"


void polyfilter_top(din_t din,dout_t dout[N_ch])
{
	static int cnt;
	dout[cnt] = din;
	if(cnt==15)
		cnt = 0;
	else
		cnt++;
}
