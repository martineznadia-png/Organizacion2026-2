%include "../LIB/pc_iox.inc"
%include "../LIB/pc_io.inc"
extern pBin_b
extern pBin_w
extern pBin_dw

;ld -m elf_i386 (archivo.o) (direccion de libreria) -l(direccion de la carpeta donde se encuenta la libreria) -(nombre del archivo) -o (nombre del ejecutable)

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

    xor esi, 0x40022021
    mov eax,esi
    call pBin_dw

    mov al,10 
    call putchar

    push esi
    pop esi 
    call pBin_dw

    push esi
    mov al,10
    call putchar

    mov ch, 0xa7            ;1010-0111
    or ch, 0x48             ;0100-1000

    mov al, ch
    call pBin_b 

    mov al,10 
    call putchar

    mov bp, 0x67da          ;0110-0111-1101-1010
    mov ax, bp
    call pBin_w

    mov al,10
    call putchar

    and bp, 0xbbac          ;1011-1011-1010-1101
    mov ax,bp 
    call pBin_w

    mov al,10
    call putchar

    call pBin_w

    mov al,10
    call putchar

    shr bp, 3
    mov ax,bp 
    call pBin_w

    mov al,10
    call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel