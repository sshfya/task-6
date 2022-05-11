#ifndef _1_PROJECT_H
#define _1_PROJECT_H
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <getopt.h>

#include "asm_func.h"
#define eps1 0.0001
#define eps2 0.0001

extern int iter_root;
extern int iter_int;

void help(void);

void test_root(void);

void test_integral(void);

void my_getopt(int ac, char **av);
extern struct option long_options[];

double root(double (double ), double (double), double, double, double);
double integral(double (double), double, double, double);
#endif //_1_PROJECT_H
