# Operating-System-Foundations--Project-5
Implementation of system calls by user level processes to kernel


In this project, we will explore user-level processes. We will create a single process, running in its own address space. When this user-level process executes, the CPU will be in user mode. The user-level process will make system calls to the kernel, which will cause the CPU to switch into system mode. After it is done, the CPU will switch back to user mode before resuming execution of the user-level process. The user-level process will execute in its own “logical address space.” Its address space will be broken into a number of pages and each page will be stored in a frame in memory. The pages will be stored in frames in physical memory, at all times and will not be swapped out to disk in this project. The kernel will be entirely protected from the user-level program; nothing the user-level program does can crash the kernel. (For more information refer Blitz manual )

Code written in: Kernel.c Kernel.h
