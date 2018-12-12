section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl _ret0
	cmp rdi, 126
	jg _ret0
	jmp _ret1

_ret0:
	mov rax, 0
	ret

_ret1:
	mov rax, 1
	ret
