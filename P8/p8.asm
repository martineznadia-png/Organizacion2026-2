%include "../LIB/pc_iox.inc"

section .data
ingresar db 'Ingresa un numero al vector: ',0xa,0
dejarIngresar db 'Si quieres dejar de ingresar numeros al vector ingresa un numero mayor a 9',0xa,0

section .bss    ;seccion para declarar las variables del programa
N resb 10  


section .text
    global _start

_start:

   @@Capturar: mov edx, ingresar
    call puts 

    call getche 
    sub ax, 48                  ;se convierte de valor ascci a valor decimal
    cmp ax, 48                                    
    jnc cmp ax, 57              ;si el numero ingresado es mayor a 0 en carri tiene un 1 y ahora se compara con 9 ascii
    jae @@fin                   ;si el numero es mayor  9 de termina de ingresar los valores

    mov [N],ax                  ;se mueve un byte de eax al vector 
    mov ebx, [N]

    mov edx, dejarIngresar
    call puts 

    mov al, 10                  ;salto de linea
    call putchar

    jmp @@Capturar
       
    ;@@desplegar: 



@@fin: mov eax,1   ;fin del programa 
int 0x80

