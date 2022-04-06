
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
MOV CX,60
; Ciclo for que va desde 1 hasta 60
ciclo:
    INC var1
    DEC CX
    JNZ ciclo 

;Ciclo While
ciclo2:
    INC var2
    INC var2
    CMP var2,34 
    JLE ciclo2
     
    
var1 DB 00h 
var2 DB 01h
ret




