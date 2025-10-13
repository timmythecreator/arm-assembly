.section .text
.global multiply

multiply:
 mul r0, r0, r1 // r0 = r0 * r1 
 bx lr // return from function (branch to link register)
