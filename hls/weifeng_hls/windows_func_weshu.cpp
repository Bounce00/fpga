#include "windows_func_weshu.h"
//using namespace weshu_window_fn;

#define WINDOWS_WESHU_LEN 16
const double  windows_weshu_param_xx[WINDOWS_WESHU_LEN]= \
						{0.0,             0.038060233744357,	0.146446609406726,	0.308658283817455,	\
						 0.500000000000000, 0.691341716182545, 	0.853553390593274,	0.961939766255643,	\
						 1,                 0.961939766255644, 	0.853553390593274,	0.691341716182545,	\
						 0.500000000000000, 0.308658283817455, 	0.146446609406726, 	0.0380602337443567};

double get_window_param(int i){
	return windows_weshu_param_xx[i];
}

int    get_window_len(){
	return WINDOWS_WESHU_LEN;
}
