; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"   
    var1 db 1
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax  
    ;;Este código es necesario para que se pueda ver el segmento de datos
    inc var1
    inc var1

   
ends

end start ; set entry point and stop the assembler.
