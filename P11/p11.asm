%include "../LIB/pc_io.inc"

section .data 

section .text 
    global _start
    global str_len

_start:

str_len: push ebx                                                                                                                                                                       
mov ecx,0 
contar: mov ebx,[ebx+ecx]
inc ecx 
cmp ebx[ebx+ecx], 0 
je finCadena
jmp contar

finCadena:pop esi 
ret 

str_mid: push ebx 
mov ecx,eax 
mov ebx,eax


mov eax,1 
int 0x80 