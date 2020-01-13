; For adding two numbers

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    mov   eax,0
    mov   ecx,3
doloop:
    mov   eax,ecx
    call  print_eax
    loop  doloop



  ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

