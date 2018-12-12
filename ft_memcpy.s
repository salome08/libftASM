global _ft_memcpy

section .text
	
_ft_memcpy:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep movsb
	pop rax
	ret
