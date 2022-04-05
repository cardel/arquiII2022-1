                     include "emu8086.inc"

org    100h    


mov cx,0009h   


jmp ciclo
        
     
ciclo:    
    add dato,1
    mov ah,2
    mov dl,dato    
    add dl,48 ;ASCII
    int 21h
    sub cx,1
    jnz ciclo
jmp  stop


stop:
    ret      
    
dato DB 0h