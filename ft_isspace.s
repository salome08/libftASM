section .text
	global _ft_isspace

_ft_isspace:
	cmp rdi, "\t"
	je ret1
	cmp rdi, "\n"
	je ret1
	cmp rdi, "\v"
	je ret1
	cmp rdi, "\f"
	je ret1
	cmp rdi, "\r"
	je ret1
	cmp rdi, " "
	je ret1
	jmp ret0


ret1:
	mov rax, 1
	ret

ret0:
	mov rax, 0
	ret
