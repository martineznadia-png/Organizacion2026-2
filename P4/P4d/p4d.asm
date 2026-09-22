%include "../../LIB/pc_io.inc" 


section .data 
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section .text
    global _start

_start:

mov edx, msg
call puts 

mov al, 'Z'
mov esi, 25 ;indice
mov ebx, msg ;base

mov byte [ebx+esi], al ;base mas indice 

mov edx, msg
call puts

mov eax,1       ;fin del programa
int 0x80 