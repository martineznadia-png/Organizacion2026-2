%include "../LIB/pc_iox.inc"
%include "../LIB/pc_io.inc"
extern pBin_b
extern pBin_w
extern pBin_dw

section	.text

	global _start       ;must be declared for using gcc

_start: 

    mov eax, 0x22446688     ;0010-0010-0100-0100-0110-0110-1000-1000
    ror eax, 4              ;1000-0010-0010-0100-0100-0110-0110-1000
    call pBin_dw

    mov al,10	; cambio de linea
	call putchar

    mov cx, 0x3F48          ;0011-1111-0100-1000
    shl cx, 3               ;1111-1010-0100-0001
    mov ax, cx              ;como solo imprime lo que esta en ax el valor se cambia a ax
    call pBin_w

    mov al,10	; cambio de linea
	call putchar

    mov esi, 0x20d685f3     ;0010-0000-1101-0110-1000-0101-1111-0011
    mov eax,esi
    call pBin_dw

    mov al,10	; cambio de linea
	call putchar

    xor esi, 0x20021011
    mov eax,esi
    call pBin_dw

    mov al,10 
    call putchar

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel