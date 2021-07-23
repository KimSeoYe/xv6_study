# Lab 2. Scheduling

### Goal

Changing a simple round-robin scheduler to a priority scheduler

### 0. Add a priority value to each process

- Add a field `priority` to `struct proc` in proc.h
- A range of priority is from -10 to 10


### 1. Add proper system calls to change the priority of a process (proc.c)

```c
int getpriority (int pid, int * prio) ;
int setpriority (int pid, int prio) ;
```

`getpriority()` 
- It iterates a process table finding a target process with given pid
- It returns the priority value through the argument `prio`
- Success >> return 0

`setpriority()` 
- It first checks if the argument `prio` is in the proper range.
	- Invalid `prio` >> return -1
- If the argument `pid` is 0, it sets the caller process's own priority as `prio` 
- If not, it finds the process with the pid and sets the priority of that as `prio`
- If the process with target pid does not exist, return -1
- Re-schedule by calling `yield()`
- Success >> return 0


### 2. Change a Round-Robin scheduler to a priority scheduler (proc.c)

- The scheduler uses a global variable `cursor` to save privious-scheduled process
- It starts to iterate process table from the `cursor`, finding a process with the largest priority value
- If it finds a target process, it moves the cursor and switchs to the target process


### 3. More (need to implement)

- Implement **aging** to avoid starvation
- Add fields to track the turnaround time and wait time of each process & use it to implement aging
- Implement priority donation and priority inheritance 
