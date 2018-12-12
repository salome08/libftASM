section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jl _ret0
	cmp rdi, 90
	jg _intra
	jmp _ret1

_intra:
	cmp rdi, 97
	jl _ret0
	cmp rdi, 122
	jg _ret0
	jmp _ret1

_ret1:
	mov rax, 1
	ret

_ret0:
	mov rax, 0
	ret
