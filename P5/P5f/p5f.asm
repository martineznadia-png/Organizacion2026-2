%include "../../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

	mov ebx, 0x5c4b2a60 ;1548429920 valor decimal
    mov eax, 0x2202471  ;mi matricula en valor hexadecimal

    add ebx,eax         ;a 0x5c4b2a60 se le suma el valor de la matricula y se guarda en ebx

    push bx             ;se insertan los 16 bits menos significativos de ebx a la pila

    mov al,8            ;se ingresa el valor de 8 en al Ya que al multiplica a bl
    mul bl              ;se multiplica bl por el valor que esta en al
    
    inc ax              ;se incrementa 1 al resultado de la multiplicacion

    mov ax, bx          
    call pHex_w 

    mov al,10	; cambio de linea
	call putchar

    mov ax, 0xff        
    div bx              ;se divide el valor de bx entre lo que tiene ax
    call pHex_w         ;imprimimos el resultado de la division

    mov al,10	; cambio de linea
	call putchar

    mov ax,dx           ;movemos el resultado del residuo a ax
    call pHex_w         ;imprimimos



	mov al,10	; cambio de linea
	call putchar

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel

