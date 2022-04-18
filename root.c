#include "project.h"
int iter_root;
int max_iter_cnt = (int) (1e5);

double root(double (*f)(double), double (*g)(double), double a, double b, double eps) {
    double Fc, F;
    iter_root = 0;
    do {
        double s = (a + b) / 2;
        double Fa = f(a) - g(a);
        double Fb = f(b) - g(b);
        double F2 = (Fa + Fb) / 2;
        double F1 = (f(s) - g(s));
        double c = (a * Fb - b * Fa) / (Fb - Fa);
        Fc = f(c) - g(c);
        if (Fa * (F1 - F2 ) > 0) {
            a = c;
            F = f(c + eps) - g(c + eps);
        } else {
            b = c;
            F = f(c - eps) - g(c - eps);
        }
    } while  ((iter_root++ < max_iter_cnt) && (F * Fc >= 0));
    return a;
}
