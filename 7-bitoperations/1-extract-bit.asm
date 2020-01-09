; stopped at vid 52 practical bit games, pos 2:06

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    mov   eax,5   ; num  0101
    mov   edx,4   ; mask 0100
    and   eax,edx
    
    ; if bit 3 is 0
    jz    if_bit_is_zero
    jmp   end_if

    ; if bit 3 is 1
    mov   eax,1
    jmp   end_if

if_bit_is_zero:
    mov   eax,0

end_if:
    call  print_eax

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

