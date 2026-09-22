%include "../../LIB/pc_io.inc" 


section .data 
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section .text
    global _start

_start:

mov edx, msg
call puts 

mov al, '%'

mov ebx, 9
mov esi, 5

mov byte msg [ebx+esi*2],al 

mov edx, msg
call puts

mov eax,1       ;fin del programa
int 0x80 