; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    mov   eax,0
    mov   ecx,0

for_loop:
    add   eax,ecx
    inc   ecx
    cmp   ecx,4
    jnz   for_loop

end_if:
    call  print_eax

  ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

