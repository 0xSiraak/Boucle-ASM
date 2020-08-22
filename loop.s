BITS 64

global _start

section .rodata

	boucle db "Ceci est une boucle en assembleur", 10, 0
	boucle_len equ $-boucle

section .text

_start:
	cmp r12, 32 ;nombre de fois ou la boucle serra répétée 
	je _exit
	inc r12
	mov rax, 1
	mov rdi, 1
	mov rsi, boucle
	mov rdx, boucle_len
	syscall
	jmp _start	

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
