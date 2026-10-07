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
@@comenzarTriangulo: cmp bx, cx 
ja @@terminarTriangulo  ;salta si es mayor 

mov si, 0
@@imprimirLinea: cmp si, bx              ;uso si para saber la cantidad de * que tengo 
jae @@saltoDeLinea      ;salta si es mayor o igual (cambia de linea de impresion)

mov al, '*'
call putchar

inc si 
jmp @@imprimirLinea

@@saltoDeLinea: mov al, 10
call putchar 
inc bx          ;incremena bx para cambiar de linea
jmp @@comenzarTriangulo


@@terminarTriangulo: mov bx, cx 
dec bx 

@@verificarfin: cmp bx,1 ; si bx es menor a 1 termina pq ya no hay asteriscos que imprimir
jb @@fin 
mov si, 0

@@compararTerminar: cmp si,bx 
jae @@saltoDeLineaTerminar  ;cambia de linea si es mayor o igual
mov al, '*'
call putchar
inc si 
jmp @@compararTerminar

@@saltoDeLineaTerminar: mov al,10
call putchar
dec bx 
jmp @@verificarfin

@@fin: mov eax,1
int 0x80
