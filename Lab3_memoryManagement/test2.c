#include "types.h"
#include "stat.h"
#include "user.h"

int main(){
	pid[i] = fork();

	if(pid[i] < 0){
		printf(1, "fork error\n");
		exit(1);
	}
	else if(pid[i] == 0){
		//			printf(1, "child 프로세스 %d\n", getpid());
		exit(i);
	}	
	else{
		continue;
	}

	int status;
	int result = waitpid(pid[i], &status, 0);
	printf(1, "pid %d, exit status: %d\n", result, status);

	exit(0);
}
