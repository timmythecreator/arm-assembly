.section .text
.global _start

_start:
 ldr r1, =#0xF0F0F0F0  // Load a test value into R1

 lsl r2, r1, #4        // Logical Shift Left R1 by 4, store result in R2
 lsr r3, r1, #4        // Logical Shift Right R1 by 4, store result in R3
 asr r4, r1, #4        // Arithmetic Shift Right R1 by 4, store result in R4
 ror r5, r1, #4        // Rotate Right R1 by 4, store result in R5
 rrx r6, r1            // Rotate Right with Extend R1 by 1, store result in R6

loop:
 B loop                // Infinite loop to prevent the program from exiting
