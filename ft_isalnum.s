section .text
	global _ft_isalnum

_ft_isalnum:
	cmp rdi, 48
	js ret0
	cmp rdi, 58
	js ret1
	cmp rdi, 65
	js ret0
	cmp rdi, 91
	js ret1
	cmp rdi, 97
	js ret0
	cmp rdi, 123
	js ret1
	cmp rdi, 122
	jns ret0

ret1:
	mov rax, 1
	jmp end

ret0:
	mov rax, 0
	jmp end

end:
	ret
