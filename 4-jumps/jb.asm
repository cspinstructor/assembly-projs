; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov   eax,2
    mov   ecx,3
    cmp   eax,ecx
    jb    label1
    jmp   label2
label1:
    mov   eax,1
    call  print_eax
    jmp   label3
    
label2:
    mov   eax,2
    call  print_eax
   
label3:
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

