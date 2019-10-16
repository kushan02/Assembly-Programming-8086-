
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

MOV [4001H], 12H
MOV [4002H], 34H
MOV [4003H], 0E9H
MOV [4004H], 12H  

MOV CX, 0004H

MOV BX, 4001H

summation:
    
    ADD AL, [BX]
    
    JC quit
    
    INC BX
    
    loop summation
  
  
quit: HLT
    
    


ret




