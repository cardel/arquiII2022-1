; multi-segment executable file template.

data segment
    ; add your data here!
    mensaje1 db "Ingrese el primer número",10,13,"$"
    mensaje2 db 10,13,"Ingrese el segundo número",10,13,"$"     
    mensaje3 db 10,13,"El resultado es: ",10,13,"$" 
    num1 db 0
    num2 db 0
    resultado db 0
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

    ; add your code here
	mov al, 03h
	mov ah, 0   
	int 10h     ; set graphics video mode. 
	
	            
    lea dx, mensaje1
    
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ;Ingreso el primer numero    
    mov ah, 1
    int 21h
    mov num1,al
           
    lea dx, mensaje2
    mov ah,9
    int 21h
     
    mov ah,1
    int 21h
    mov num2,al       
    
    mov bl,num1
    sub bl,48
    
    mov bh,num2
    sub bh,48
    
    add bl,bh
    add bl,48
    
    mov resultado,bl
    
    lea dx,mensaje3
    mov ah,9
    int 21h   
    
    
    
	mov ah, 2
	mov dl, resultado
	int 21h          
	 
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
