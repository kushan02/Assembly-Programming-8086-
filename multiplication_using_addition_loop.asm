
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

MOV [4001H], 23H
MOV [4006H], 40H

MOV CX, 0023H

multiplier:
    MOV DH, 00H
    MOV DL, [4006H]
    
    ADD AX, DX
    
    loop multiplier

ret




