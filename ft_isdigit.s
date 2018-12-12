section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl _ret0
	cmp rdi, 57
	jg _ret0
	jmp _ret1

_ret1:
	mov rax, 1
	ret
	 
_ret0:
	mov rax, 0
	ret
