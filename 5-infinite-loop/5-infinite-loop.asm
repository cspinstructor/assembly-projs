; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov     ecx,0
my_label:
    inc     ecx
    mov     eax,ecx
    ; Print result to console
    call    print_eax
    jmp     my_label

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

