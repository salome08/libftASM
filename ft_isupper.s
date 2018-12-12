section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	jl ret0
	cmp rdi, 90
	jg ret0
	jmp ret1

ret1:
	mov rax, 1
	ret

ret0:
	mov rax, 0
	ret
