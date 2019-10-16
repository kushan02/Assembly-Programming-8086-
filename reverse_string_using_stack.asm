
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;include 'emu8086.inc'

ORG    100h

MOV AX, 0
MOV DS, AX

MOV [4000H], 65 ; The ASCII Value
MOV [4001H], 66 
MOV [4002H], 67
MOV [4003H], 68
MOV [4004H], 69    
            
            
; MAKE SURE Number of PUSH = Number of POP
; Otherwise it will go into infinite loop

MOV BX, 4000H
MOV SI, 00H

MOV CX, 0005H

foreach:

    PUSH [BX+SI]
                
    INC SI
    loop foreach  


MOV CX, 0005H    
MOV SI, 00H

reverse:

    POP [BX+SI]
                
    INC SI
    loop reverse  





ret  





