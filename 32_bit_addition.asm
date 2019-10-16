
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

MOV [4000H], 12H
MOV [4001H], 34H
MOV [4002H], 56H
MOV [4003H], 78H

MOV [4004H], 23H
MOV [4005H], 45H
MOV [4006H], 67H
MOV [4007H], 89H

MOV AH, [4000H]
MOV AL, [4001H]

MOV BH, [4002H]
MOV BL, [4003H]  

MOV CH, [4004H]
MOV CL, [4005H]

MOV DH, [4006H]
MOV DL, [4007H]
              
ADD BX, DX
ADC AX, CX



ret




