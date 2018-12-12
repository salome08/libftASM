%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

extern _ft_strlen

section .data
	newline db 0x0a

section .text
	global _ft_puts

_ft_puts:
	cmp rdi, 0
	jz end
	push rdi
	call _ft_strlen
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	pop rsi
	syscall
	
	lea rsi, [rel newline]
	mov rdx, 1 
	mov rax, 0x2000004
	syscall

end:
	ret
