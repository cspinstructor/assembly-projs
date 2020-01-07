; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    ; Read two nums from user:
    call    read_hex
    mov     edx,eax 
    call    read_hex

    ; Add the two nums:
    add     eax,edx

    ; Print result to console
    call    print_eax

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

