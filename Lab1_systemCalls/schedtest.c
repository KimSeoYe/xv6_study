#include "types.h"
#include "stat.h"
#include "user.h"

void
child_proc ()
{
	int pid = getpid() ;
	for (;;) {
		//sleep(10) ;
		int prio ;
		if (getpriority(pid, &prio) == -1) printf(2, "getpriority failed\n") ;
		printf(1, "c(%d) %d\n", pid, prio) ;
	}	
}

void
parent_proc ()
{
	int pid = getpid() ;
	for (int i = 0; ; i++) {
		//sleep(10) ;
		int prio ;
		if (getpriority(pid, &prio) == -1) printf(2, "getpriority failed\n") ;
		printf(1, "p(%d) %d\n", pid, prio) ;
		if (i == 30)	{
			setpriority(pid, 1) ;
		}
	}
}

int
main (int argc, char * argv[])
{
	int pid = fork() ;

	if (pid == 0) {
		child_proc() ;
	}
	else if (pid > 0) {
		parent_proc() ;
	}
	else {
		printf(2, "fork failed\n") ;
	}

}


