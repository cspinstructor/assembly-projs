; stopped at vid 52 practical bit games, pos 2:06

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov     eax,3   ; num  0101
    mov     edx,4   ; mask 0100
    and     eax,edx

    jz      bit_is_zero
    
    ; bit is not zero



    jmp     end_if
bit_is_zero:
    ; bit is zero
        

end_if:

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

