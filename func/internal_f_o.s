.section .text
.global _start

_start:
 /*
 * Implementation of:
 * int add(int a, int b) {
 *     return a + b;
 * }
 */

 mov r0, #3 // initialize argument a = 3 (passed in r0)
 mov r1, #2 // initialize argument b = 2 (passed in r1)

 bl add // branch with link: call function 'add'
        // result will be returned in r0
 mov r0, r0

add: // function add(int a, int b)
 add r0, r0, r1 // compute r0 = r0 + r1 (return value in r0)
 bx lr // return from function (branch to link register)

end:
 b end // infinite loop

