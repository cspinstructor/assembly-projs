; reads and print strings

format PE console
entry start

include 'win32a.inc' 

ARRAY_SIZE = 32
section '.data' data readable writeable
  
    str1   db  'Enter name:   ',0

section '.bss' readable writeable

    str2  dd  ARRAY_SIZE  dup (?)

; ===============================================
section '.text' code readable executable

start:
    ; Print instructions
    mov     esi,str1
    call    print_str
    
    ; Read a line from terminal
    mov     edi,str2
    mov     ecx,ARRAY_SIZE
    call    read_line

    ; Print what the user inputs
    mov     esi,edi
    call    print_str

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

