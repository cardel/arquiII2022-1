
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

ciclo1:  
    INC var1
    INC var2
    INC var2
    
    ;;Condicion de parada var1 >= 10 y var2 >= 20
    
    CMP var1,10
    JLE ciclo1
    
    CMP var2,20
    JLE ciclo1
                 
                 
ciclo2:
   
    INC var3
    INC var4
    INC var4  
    INC var4
    ;;Condicion de parada var3 >= 10 o var4 >= 20
    
    CMP var3,10
    JGE salir
    
    CMP var4,20
    JGE salir 
    
    
    JMP ciclo2
    
   
    
    
    
    
var1 DB 00h
var2 DB 01h 
var3 DB 00h
var4 DB 01h
salir:
    ret




