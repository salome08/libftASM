global _ft_strlen

section .text

_ft_strlen:
	push rdi
	mov rcx, -1
	xor rax, rax
	cld
	repne scasb
	not rcx
	dec rcx
	pop rdi
	mov rax, rcx
	ret
