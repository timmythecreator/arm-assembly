.section .text
.global _start

_start:
 ldr r0, =#0x13377331 // load the constant 0x13377331 into register r0 (via pseudo-instruction)
 movw r1, 0xface // move the lower 16 bits (0xface) into register r1 (0x0000face)
 movt r1, 0xf00d // move the upper 16 bits (0xf00d) into register r1, result = 0xf00dface
