#include "types.h"
#include "stat.h"
#include "user.h"
	void
child_func (int n)
{
	int pid = getpid() ;
	while (1) {
		for (int i = 0; i < n; i++) {
			printf(1, "  ") ;
		}
		printf(1, "%d\n", pid) ;
	}
	return ;
}
	int
main (int argc, char * argv[])
{
	int pid[5] ;
	int npid = 5 ;
	
	if (setpriority(getpid(), 10) == -1) {
		printf(1, "[MAIN] setpriority error.\n") ;
		exit(1) ;
	}
	for(int i = 0; i < npid; i++) {
		pid[i] = fork() ;
		if (pid[i] < 0) {
			printf(1, "pid[%d] fork error.\n", i) ;
			exit(1) ;
		} else if (pid[i] == 0) {
			setpriority(pid[i], i) ;
			child_func(i+1) ;
			exit(0) ;
		} else {
			continue ;
		}
	}
	for(;;) {
		for (int i = 0; i < npid; i++) {
			int prio ;
			if (getpriority(pid[i], &prio) == 0)
				setpriority(pid[i], (prio+1)%npid) ;
		}
		sleep(500) ;
	}
	for(int i = 0; i < npid; i++) {
		kill(pid[i]) ;
		waitpid(pid[i], 0x0, 0) ;
	}
	exit(0);
}
