global _ft_strdup

extern _malloc
extern _ft_strlen
section .text

_ft_strdup:
	push rdi
	call _ft_strlen
	mov rcx, rax
	push rcx
	mov rdi, rax
	call _malloc
	jc end
	pop rcx
	pop rsi
	mov rdi, rax
	cld
	rep movsb

end:
	ret
	
