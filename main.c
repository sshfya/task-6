#include <stdio.h>
#include <string.h>
int main(int ac, char **av) {
	if (!strcmp(av[1], "-help")) {
		printf("---------------------\n");
		printf("It's help menu\n");
		printf("Usage:\n");
		printf("	-a : print abcissa\n");
		printf("	-b : print iterations\n");
		printf("---------------------\n");
	}
	// printf("ac = %d, av[0] = %s\n", ac, av[0]);
	// printf("Hello, World!\n");
	return 0;
}
