; print strings


format PE console
entry start

include 'win32a.inc' 


section '.data' data readable writeable
  
    str1   db  'Hello world',0

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov     esi,str1
    call    print_str

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

