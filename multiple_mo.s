.section .text
.global _start

_start:
 ldr r0, =values // load the address of 'values' into r0
 ldm r0, {r1,r2,r3,r4,r5,r6,r7,r8} // load values from r0 into r1 to r8
 stm r0, {r1,r2,r3,r4,r5,r6,r7,r8} // store from r1 to r8 into r0 

.section .data
values:
 .word 1,2,3,4,5,6,7,8
