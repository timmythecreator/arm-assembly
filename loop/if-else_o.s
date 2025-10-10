.section .text
.global _start

_start:
/*
 * equivalent of an if-else statement:
 * int i = 0; 
 * int j = 10;
 * int result;
 * if (i > j) {
 *   result = 20;
 * else {
 *   result = 10;
 * }
*/
 mov r0, #0 // initialize r0 = 0
 mov r1, #10 // initialize r1 = 10

 cmp r0, r1 // compare r0 with r1 (sets condition flags)
 ble else // if r0 is less than or equal to r1, branch to else block

 mov r2, #20 // if r0 is greater than r1, set r2 = 20

 b end // jump to end block after if condition

else:
 mov r2, #10 // else block: set r2 = 10

end:
 b end
