.section .text // Define the code section as text, so the code can be executable
.global _start // Declare _start label as global. This is important for the linker to recognize the entry point of the program

_start: // Define the start of the program
 mov r0, pc // mov - move, pc - Program Counter
 sub r0, #8 // sub - subtract
 bx r0 // bx - branch. Basically, it means: branch to the address in r0
