%include "../../LIB/pc_io.inc" 


section .data 
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section .text
    global _start

_start:

mov edx, msg
call puts 

mov al, '@'
mov byte [edx+26],al ;relativo al registro edx

mov edx, msg
call puts

mov eax,1       ;fin del programa
int 0x80 