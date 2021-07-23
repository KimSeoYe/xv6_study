#include "types.h"
#include "stat.h"
#include "user.h"

int
main()
{
	int arr[10];

	for(int i=0; i<10; i++){
		printf(1, "[DEBUG] %p\n", &arr[i]);
	}
	
	exit(0);
}
