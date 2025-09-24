.section .text
.global _start

_start:
 ldr r0, =mydata // load the address of variable 'mydata' into r0
 ldr r1, =#32
 str r1, [r0] // store the value from r1 into memory at the address in r0 (mydata) 

.section .data // section for initialized global/static data
mydata:
 .byte 0x0 // allocate 1 byte in memory for 'mydata' and initialize it with 0
