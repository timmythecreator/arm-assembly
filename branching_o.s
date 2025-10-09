.section .text
.global _start

_start:
 mov r1, #10 // Load the value 10 into r1
 mov r2, #20 // Load the value 20 into r2

 cmp r1, r2 // Compare r1 and r2
 ble less_equal // Branch to 'less_equal' if r1 <= r2
 bgt greater // Branch to 'greater' if r1 > r2; Will be ingored as 10<20

less_equal:
 mov r0, #1 // If less or equal, set r0 to 1; Will branch here
 b end // Branch to 'end'

greater:
 mov r0, #0 // If greater, set r0 to 0; This branch will be ignored

end:
 b end // Infinite loop to prevent the program from exiting
