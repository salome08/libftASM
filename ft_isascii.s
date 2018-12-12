section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl _ret0, 
	cmp rdi, 127
	jg _ret0
	jmp _ret1

_ret1:
	mov rax, 1
	ret

_ret0:
	mov rax, 0
	ret		



