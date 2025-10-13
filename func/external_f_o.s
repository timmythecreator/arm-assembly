.section .text
.extern multiply
.global _start

_start:
 mov r0, #5 // initialize argument a = 5 (passed in r0)
 mov r1, #3 // initialize argument b = 3 (passed in r1)

 bl multiply // branch with link: call function 'multiply'
             // result will be returned in r0
 mov r7, #1
 swi 0
