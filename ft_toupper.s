global _ft_toupper

section .text

_ft_toupper:
	mov rax, rdi
	cmp rax, 97
	js end
	cmp rax, 123
	jns end
	sub rax, 32

end:
	ret
