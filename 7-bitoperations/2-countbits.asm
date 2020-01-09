format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov     edx,5   ; num  0101 to count bits
    mov     ecx,0   ; counter

    and     edx,1   ; extract lsb
    add     ecx,edx ; add to ecx
    ror     edx,1

    loop    start
   
    mov     eax,edx
    call    print_eax



    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

