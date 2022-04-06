
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
  
  
INC var1     

MOV AX,10h
MUL var2      ;;Multplicando AX * var2 y lo guardamos en AX
MOV var2,AX ;;
; add your code here   

MOV AX,var4  
MOV BX,var5
DIV BX

var1 DB 01h
var2 DW 00ffh  
var3 EQU 3.1416       
var4 DW 1033
var5 EQU 3

ret




