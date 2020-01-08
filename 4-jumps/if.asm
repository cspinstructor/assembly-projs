; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov   eax,4
    mov   edx,3
    cmp   eax,edx
    
    ; if eax >= edx
    jae   end_if

    ; if eax < edx
    inc   eax

end_if:
    call  print_eax

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

