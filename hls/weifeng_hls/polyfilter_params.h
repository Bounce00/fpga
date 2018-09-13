#ifndef POLYFILTER_PARAMS_H_
#define POLYFILTER_PARAMS_H_

#include <complex>
#define POLYFILTER_TLEN 256
#define POLYFILTER_TCHS 16
#define POLYFILTER_IQ_MUL_NUM 4
#define POLYFILTER_LEN  (POLYFILTER_TLEN/POLYFILTER_TCHS)

double get_polyfilter_param(int i);
int    get_polyfilter_len();
int    get_polyfilter_total_len();

#endif // POLYFILTER_PARAMS_H_
