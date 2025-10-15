.section .text
.global _start

_start:
 ldr r0, =#1 // r0 = 1
 ldr r1, =#2 // r1 = 2

 bl foo // branch with link: call function 'foo'
        // the CPU saves the return address in the link register (lr)
 mov r0, r0 // no operation (used as a placeholder or breakpoint)

foo:
 push {r4-r11, lr} // save important registers onto the stack:
                   // r4-r11 are nonvolatile registers
                   // lr is the return address
 sub sp, sp, #32 // make room on the stack (reserve 32 bytes)
                 // for possible local variables or temporary data

 add r0, r0, r1 // r0 = r0 + r1

 add sp, sp, #32 // restore the stack pointer (free the 32 bytes)
                 // return stack to its previous position
 pop {r4-r11, pc} // restore saved registers and pop return address into pc
                  // this effectively jumps back to the caller (same as 'bx lr')
