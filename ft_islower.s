section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 97
	jl ret0
	cmp rdi, 122
	jg ret0
	jmp ret1

ret1:
	mov rax, 1
	ret

ret0:
	mov rax, 0
	ret
