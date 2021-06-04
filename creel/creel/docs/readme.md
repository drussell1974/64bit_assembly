* Compiling and running assembly file

```
nasm -felf64 <program_file>.asm -o <program_file>.o
ld <program_file>.o -o <program_file>
chmod u+x <program_file>
./<program_file>
```

* Debugging using gdb

Compile the source files using nasm with the -g flag

```
nasm -felf64 <program_file>.asm -o <program_file>.o -g
ld <program_file>.o -o <program_file>
chmod u+x <program_file>
gdb -i=mi <program_file>
GNU gdb (Ubuntu 9.2-0ubuntu1~20.04) 9.2
...
Reading symbols from print_rax...

(gdb) run

```

** Set breakpoint **

1. To set a breakpoint, first view the assembler code usidng the disassemble command. Set breakpoint referencing the memory address (alternatively specify a label).

```
(gdb) disass _start
0x0000000000401000 <+0>:     movabs $0x1122334455667788,%rax
0x000000000040100a <+10>:    mov    $0x1,%edi
0x000000000040100f <+15>:    mov    $0x1,%edx
0x0000000000401014 <+20>:    mov    $0x40,%ecx
(gdb) break *0x40100f
~"Breakpoint 1 at 0x401000\n"...
```

2. Run the program, using 'run', which will stop at the break point, then use the 'cont' command to run the rest of the program (or stop at the next breakpoint). Alternatively, use 'ni' to exectute the next instruction.

```
(gdb) run
...
"Starting program: /home/dave/dev/64bit_assembly/apress/ch2/print_rax \n"
*stopped,reason="breakpoint-hit",d
...
(gdb) cont
...
*stopped,reason="breakpoint-hit",d
...
(gdb) ni
*running,thread-id="all"
```

4. View a register by running the 'info registers $rax' or all registers 'info registers' 

```
(gdb) info registers
~"rax            0x1122334455667788  1234605616436508552\n"
~"rbx            0x0                 0\n"
~"rcx            0x0                 0\n"
~"rdx            0x0                 0\n"
~"rsi            0x0                 0\n"
~"rdi            0x0                 0\n"
~"rbp            0x0                 0x0\n"
~"rsp            0x7fffffffdb90      0x7fffffffdb90\n"
~"r8             0x0                 0\n"
~"r9             0x0                 0\n"
~"r10            0x0                 0\n"
~"r11            0x0                 0\n"
~"r12            0x0                 0\n"
~"r13            0x0                 0\n"
~"r14            0x0                 0\n"
~"r15            0x0                 0\n"
~"rip            0x40100a            0x40100a <_start+10>\n"
~"eflags         0x202               [ IF ]\n"
~"cs             0x33                51\n"
~"ss             0x2b                43\n"
~"ds             0x0                 0\n"
~"es             0x0                 0\n"
~"fs             0x0                 0\n"
~"gs             0x0                 0\n"
(gdb) info registers $rax
~"rax            0x1122334455667788  1234605616436508552\n"
```
