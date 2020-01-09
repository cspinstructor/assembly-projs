format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
  mov   ecx,32d
  mov   eax,1 ;counter
start_loop:
  call  print_eax
  inc   eax
  loop  start_loop
   

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

