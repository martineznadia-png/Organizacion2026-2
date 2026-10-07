%include "../LIB/pc_iox.inc"

section .data 
msg db 'El caracter es menor a "m"', 0xa,0

section .text 
    global _start

_start: 

call getche         ;guarda en al el byte correcpondiente al caracter y hace eco en pantalla

mov dl, al          ; muevo el valor del al (mi caracter) a dl para poder hacer un salto de linea

mov al,10           ; hago salto de linea
call putchar

cmp dl, 122         ;se compara si el caracter es menor a "z"
jbe @@esMenoraZ     ;salta si es menor o igual
jmp @@fin 

@@esMenoraZ: cmp dl, 97
jae @@verificar     ;salta si es mayor o igual
jmp @@fin 

@@verificar: cmp dl, 109
jnae @@esMenoraM    ;salta si es menor
jmp @@fin

@@esMenoraM: mov edx, msg
call puts


@@fin: mov eax,1 
int 0x80

