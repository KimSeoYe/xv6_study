#include "types.h"
#include "stat.h"
#include "user.h"

int main(){
	int p1, p2, p3;
	int pri;

	p1 = fork();
	if(p1 == 0){
		int n = 0;
		getpriority(0, &pri);
		printf(1, "[P1111] process[%d] - priority: %d\n", getpid(), pri);
		setpriority(0, 5);
		while(1){
			sleep(90);
			if(n == 3) setpriority(0, -7);
			getpriority(0, &pri);
			printf(1, "[P1111] process[%d] - priority: %d\n", getpid(), pri);
			n++;
		}
	}
	else{
		p2 = fork();
		if(p2 == 0){
			getpriority(0, &pri);
			printf(1, "[P2222] process[%d] - priority: %d\n", getpid(), pri);
			setpriority(0, 5);
			while(1){
				sleep(90);
				getpriority(0, &pri);
				printf(1, "[P2222] process[%d] - priority: %d\n", getpid(), pri);
			}
		}
		else{
			int k = 0;
			p3 = fork();
			if(p3 == 0){
				getpriority(0, &pri);
				printf(1, "[P3333] process[%d] - priority: %d\n", getpid(), pri);
				setpriority(0, 5);
				while(1){
					sleep(90);
					if(k == 10) setpriority(0, 8); 
					getpriority(0, &pri);
					printf(1, "[P3333] process[%d] - priority: %d\n", getpid(), pri);
					k++;
				}
			}
			else{
				getpriority(0, &pri);
				printf(1, "[P4444] process[%d] - priority: %d\n", getpid(), pri);
				setpriority(0, 5);
				while(1){
					sleep(90);
					getpriority(0, &pri);
					printf(1, "[P4444] process[%d] - priority: %d\n", getpid(), pri);
				}
			}
		}
	}

	exit(0);
}
