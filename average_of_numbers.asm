
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

MOV [4000H], 01H
MOV [4001H], 02H
MOV [4002H], 03H
MOV [4003H], 04H
MOV [4004H], 05H
MOV [4005H], 06H
MOV [4006H], 07H
MOV [4007H], 08H
MOV [4008H], 09H
MOV [4009H], 0AH

MOV CX, 000AH
MOV BX, 4000H

sum:
    MOV DH, 00H
    MOV DL, [BX]
    INC BX
    ADD AX, DX
    loop sum

MOV DX, 0000H  
MOV CX, 000AH
DIV CX ; divides DX.AX -: CX 

ret