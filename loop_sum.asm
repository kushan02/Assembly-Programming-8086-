
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

MOV AX, 0000H
MOV DS, AX


MOV [4000H], 01H
MOV [4001H], 02H
MOV [4002H], 03H
MOV [4003H], 04H
               
MOV CX, 04H

MOV AX, 0000H
MOV BX, 4000H

adder:  
    MOV DH, 00H
    MOV DL, [BX]
    ADD AX,DX
    INC BX
 
    loop adder 


ret




