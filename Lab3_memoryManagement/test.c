#include "types.h"
#include "stat.h"
#include "user.h"

#define MAX 10000
int
main (int argc, char * argv[]) 
{
	int local[MAX] = {0};

	for(int i = 0; i < MAX; i++) printf(1, "test: local[%d] = %d\n", i, local[i]) ; 
	
	exit(0);
}
