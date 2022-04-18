#include "project.h"

double f1(double x){
	return x*x;
}

int main(void){
	printf("%lf\n",integral(f1,0,1,0.001));
}
