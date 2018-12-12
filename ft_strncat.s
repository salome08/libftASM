global _ft_strncat

extern _ft_strlen

section .text

_ft_strncat:
	call _ft_strlen
	mov rcx, 0
	
_loop:
	cmp rcx, rdx
	je end
	cmp byte[rsi + rcx], 0x0
	jz end
	mov r8, [rsi + rcx]
	mov [rdi + rax], r8
	inc rcx
	inc rax
	jmp _loop

end:
	mov r8, 0
	mov [rdi + rax], r8
	mov rax, rdi
	ret
