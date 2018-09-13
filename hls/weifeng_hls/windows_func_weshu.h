#ifndef WINDOW_PARAM_WESHU_H_
#define WINDOW_PARAM_WESHU_H_

double get_window_param(int i);
int    get_window_len();

template<class TC, int SZ>
void init_coef_array(TC *coeff)
{
   for (int i = 0; i < SZ; i++) {
      coeff[i] = get_window_param(i);
   }
};

#endif // WINDOW_PARAM_WESHU_H_
