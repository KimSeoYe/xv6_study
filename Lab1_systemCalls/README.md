# Lab 1. System Calls

### Goals

- Understand the system call interface
- Understand how the user program gives the kernel parameters and receives the value using trap frame.
- Understand how the event hadling occurs
- Understand and modify the process structure
- Understand the system calls - exit, wait

### 0. Understanding the system call

To implement a new system call, 
1. Implement the main function at `proc.c`.   
2. Add a definition of the system call to `defs.h`.
3. Add a system call handler function to `sysproc.c`. the handler function fetch the arguments from the user space using `argint()`, `argptr()`, ect.
4. Define a new system call number at `syscall.h`.
5. Add a definition of the new handler function to `syscall.c` and add that function to a system call table.
6. Add `SYSCALL(<new system call name>)` to `usys.S`
7. Add a definition of the systemcall to `user.h` in order to allow user to use the new system call.

### 1. Change the exit system call signature `void exit()` to `void exit(int status)`

- First, I added a field to track the exit status of the terminated process to a process structure at `proc.h`.
- After I changed the system call implementation, I also modified all user programs that uses `exit()` to fit to the new prototype.

### 2. Change the wait system call signature `int wait()` to `int wait(int * status)`

- It pass the return value, exit status of the child, through the argument.
- If the user pass the argument as `NULL`, the exit status of the child must be discarded.

### 3. Implement a new system call `int waitpid(int pid, int * status, int options)`

- It waits until the process with specific pid is terminated.
- It scans through the process table to find the process it wants. (the process with the target pid and ZOMBIE status)
- When it finds the process, it changes that's status to UNUSED, initializes fields, and gets an exit status.
- It returns the pid of terminated proces or -1 for error.

---

Please find a detailed description in Korian at [here](https://github.com/KimSeoYe/xv6_study/blob/main/Lab1_systemCalls/xv6_Lab1_syscall.pdf)