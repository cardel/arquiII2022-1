                     include "emu8086.inc"

org    100h    


mov cx,00FFh   


jmp ciclo
        
     
ciclo:    
    add dato,1
    mov ah,2
    
    
    cmp dato,10 ;;Cuando alcanza 10
    je decenaproc  ;;Reiniciamos  
evaluardecena:   
    cmp decena,10
    je centenaproc    

imprimir:    
    mov dl,centena
    add dl,48
    int 21h 
    mov dl,decena
    add dl,48      
    int 21h 
    mov dl,dato  
    add dl,48 ;ASCII
    int 21h
    sub cx,1  
    
    mov dl," "
    int 21h
    
    jnz ciclo
jmp  stop


decenaproc:
     mov dato,0
     add decena,1
     jmp evaluardecena   
     
centenaproc:
     mov dato,0
     mov decena,0
     add centena,1
     jmp imprimir
     
stop:
    ret      
   
    
dato DB 0h    
decena DB 0h 
centena DB 0h