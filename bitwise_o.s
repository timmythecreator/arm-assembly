.global _start
.section .text

_start:
 ldr r0, =#0x12 // 00010010
 ldr r1, =#0x34 // 00110100

 eor r0, r0, r1 // r0=r0^r1 00010010 ^ 00110100 = 00100110 (0x26)
 eor r1, r0, r1 // r1=r0^r1 00100110 ^ 00110100 = 00010010 (0x12)
 eor r0, r0, r1 // r0=r0^r1 00100110 ^ 00010010 = 00110100 (0x34)

// As a result, we swapped the values of r0 with r1 and vice versa

loop:
 b loop
