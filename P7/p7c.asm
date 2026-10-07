%include "../LIB/pc_iox.inc"

section .data 
msg db 'Ingresa el tamaño del triangulo: ',0xa,0

section .text 
    global _start

_start: 

mov edx,msg 
call puts 

call getche         ;ingresa el valor del caracter ingresado y lo mete en ax
sub ax, '0'         ;convertimos el valor ascii en valor numerico
mov cx, ax

mov ax, '*'
@@comenzarTriangulo: inc bx

call putchar

inc ax 
cmp bx, cx 
jnae @@comenzarTriangulo        ;salta si es menor a 3

@@comparar: cmp bx, cx 
jna @@terminarTriangulo
jmp @@fin

@@terminarTriangulo: call putchar 
dec bx 
dec ax 
jmp @@comparar

@@fin: mov eax,1
int 0x80
