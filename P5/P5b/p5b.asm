%include "../../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

	mov ebx, 0x5c4b2a60 ;1548429920 valor decimal
    mov eax, 0x2202471  ;mi matricula en valor hexadecimal

    add ebx,eax         ;a 0x5c4b2a60 se le suma el valor de la matricula y se guarda en ebx

    push bx              ;se insertan los 16 bits menos significativos de ebx a la pila
    mov eax, ebx
    call pHex_dw

	mov al,10	; cambio de linea
	call putchar

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel

