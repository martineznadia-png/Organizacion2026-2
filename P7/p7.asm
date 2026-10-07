%include "../LIB/pc_iox.inc"

section .data 
msg db 'El caracter es menor a "m"', 0xa,0

section .text 
    global _start

_start: 

call getche         ;guarda en al el byte correcpondiente al caracter y hace eco en pantalla

cmp al, '123'       ;se compara si el caracter es menor a "z" (como no se como hacer el <= a z tomo el valor ascii de "{" para que tambien cuente si es igual a z)
jnc @@esMenoraZ     ;si en la bandera de carri hay un cero es que es menor
jmp @@fin 

@@esMenoraZ: cmp al, '98'
jc @@verificar 
jmp @@fin 

@@verificar: cmp al, '109'
jnc @@esMenoraM
jmp @@fin

@@esMenoraM: mov ebx, msg
call puts

@@fin: mov eax,1 
int 0x80

