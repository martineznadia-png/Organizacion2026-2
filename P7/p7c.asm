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

mov bx,1            ;fila del triangulo
@@comenzarTriangulo: bx, cx 
ja @@terminarTriangulo  ;salta si es mayor 

@@imprimirLinea: cmp si, bx              ;uso si para saber la cantidad de * que tengo 
jbe @@saltoDeLinea      ;salta si es menor o igual (cambia de linea de impresion)

mov al, '*'
call putchar

inc si 
jmp @@imprimirLinea

@@saltoDeLinea: mov al, 10
call putchar 
inc bx          ;incremena bx para cambiar de linea
jmp @@comenzarTriangulo


@@terminarTriangulo: 

@@fin: mov eax,1
int 0x80
