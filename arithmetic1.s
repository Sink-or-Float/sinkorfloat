@project 1 part 2
 .section .data
 .section .text
 .global _start
 _start:
	@ A = (A + B) - (C * D)
	@ A = 10, B = 11, C = 7, D = 2 
	mov r1, #10		@r1 acts as A, storing 10 to A
	add r1, #11		@adding 11 to r1
	mov r2, #7		@r2 acts as C, storing 7 to C
	mov r3, #2		@r3 acts as D, storing 2 to D
	mul r2, r3		@multiplying C and D
	sub r1, r2		@subtracting (C * D) from (A + B)

	mov r7, #1		@ Program Termination: exit syscall
	svc #0			@ Program Termination: wake kernel
 .end
