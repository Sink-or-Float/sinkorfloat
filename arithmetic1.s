.section .data
.section .text
.globl _start
_start:
	mov r1, #10 @ load 10 to r1 A=10
	add r1, #11 @ add 11 to r1 
	mov r2, #7  @ load 7 to r2
	mov r3, #2  @ load 2 to r3
	mul r2, r3  @ multiply 7 and 2
	sub r1, r2  @ subtract 14 from 21

	mov r7, #1  @ Program Termination: exit syscall
	svc #0      @ Program Termination: wake kernel
.end
