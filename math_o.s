.section .text
.global _start

_start:
  mov r1, #10 // Load an unsigned value 10 into R1
  mov r2, #-5 // Load a signed value -5 into R2

 // Unsigned Addition
 add  r3, r1, r2 // r3 = r1 + r2 (interpreted as unsigned)

 // Signed Addition
 adds r4, r1, r2 // r4 = r1 + r2 (interpreted as signed with flags)

 // l - long multiplication, you can store the result of two 32-bit multiplications
 // Unsigned Multiplication
 umull r5, r6, r1, r2 // r6:r5 = r1 * r2 (interpreted as unsigned)

 // Signed Multiplication
 smull r7, r8, r1, r2 // r8:r7 = r1 * r2 (interpreted as signed)

 // Unsigned Division
 udiv r9, r1, r2 // r9 = r1 / r2 (interpreted as unsigned)

 // Signed Division
 sdiv r10, r1, r2 // r10 = r1 / r2 (interpreted as signed)

 // Unsigned Comparison
 cmp r1, r2 // Compare r1 and r2 (interpreted as unsigned)
 blo unsigned_label //  Branch to unsigned_label if r1 < r2 (unsigned)

 // Signed Comparison
 cmp r1, r2 // Compare r1 and r2 (interpreted as signed)
 blt signed_label // Branch to signed_label if r1 < r2 (signed)

loop:
 B loop // Infinite loop to prevent the program from exiting

unsigned_label:
 // Handle unsigned comparison result here
 B loop // Infinite loop to prevent the program from exiting

signed_label:
 // Handle signed comparison result here
 B loop // Infinite loop to prevent the program from exiting
