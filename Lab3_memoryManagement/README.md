# Lab 3. Memory Management

### Goals

- Modify user memory layout to move stack to top of address space
- Implement stack growth

### 1. Modify memory layout

Original xv6 loads the 1-page sized stack at a page right after the last page it loaded code and data sections from the ELF executable. So I needed to change the location where the stack need to be loaded. Also, There need to be another field for each process to track the size of the stack (in page size unit).

- I added a field that track the size of the stack to a process structure `struct proc`, and
- Then I changed some part of `exec()`, especially the part that allocates new stack by calling `allocuvm()`.

By doing so, I located the stack right under the kernel of the process's address space.

Because I changed the memory layout, I needed to do some additional but inevitable works.

- I modified all functions that checks the range of the stack, defined in **syscall.c** (Ex. `argint()`, `argstr()`, `argptr()`, `argfd()`)
- When `fork()` is executed, the memory of the parent process is copied. Thus I needed to modify the `copyuvm()` called at `fork()` to copy the stack as well as code and heap.


### 2. Implement stack growth

When a page fault occurs due to stack overflow, need to increase the size of the stack. To implement the stack growth, I simply modified `trap.c`.

- First, I added the trap case `T_PGFLT`.
- In x86, `%cr2` register has the address that caused the page fault.
- Using `%cr2`, I checked if the page fault is becaus of stack overflow.
- Then I added the code that allocates a new stack(1 page) and adds 1 to the stack size field.

