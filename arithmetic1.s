@ arithmetic1 program
.section .data
.section .text
.global _start
_start:

	mov r1, #10	@ r1 = A
	add r1, #11	@ adding 11 (aka B) to A
	mov r2, #7	@ r2 = C
	mov r0, r2	@ moving r2 to r0 for mul
	mov r3, #2	@ moving 2 to r3 (aka D)
	mul r0, r3	@ multiplying C in r0 by 2 (aka D)
	sub r1, r0	@ subtracting r0 from r1, result will be in r1

	mov r7, #1 	@ Program Termination: exit sycall

	svc #0		@ Program Termination: wake kernell

.end
