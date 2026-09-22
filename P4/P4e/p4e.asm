%include "../../LIB/pc_io.inc" 


section .data 
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section .text
    global _start

_start:

mov edx, msg
call puts 

mov al, 'Z'

mov ebx, 5
mov esi, 10

mov byte msg [ebx+esi+10],al 

mov edx, msg
call puts

mov eax,1       ;fin del programa
int 0x80 