#include "types.h"
#include "stat.h"
#include "user.h"

void
child_proc (int proc_num)
{
	int pid = getpid() ;
	for (int i = 0; ; i++) {
		//sleep(30) ;
		printf(1, "%d\n", proc_num) ;
		if (i == 100) {  // even : RR after set priority
			setpriority(pid, 1) ;
		}
	}	
}


int
main (int argc, char * argv[])
{
	int pids[5] ;
	for(int i = 0; i < 5; i++) {
		pids[i] = fork() ;
		if (pids[i] == 0) {
			child_proc(i) ;
		}
	}
}


