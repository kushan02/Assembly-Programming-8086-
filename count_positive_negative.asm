
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

; we check MSB for negative and positive

MOV [4000H], 01101010b
MOV [4001H], 11110101b
MOV [4002H], 11010101b
MOV [4003H], 01111101b

MOV CX, 0004H
MOV BX, 4000H
    
; DL counts negative
; DH count positive
MOV DX, 0000H 

MOV AL, 00H ; to compare wrt other numbers
   
    
foreach:
     
     RCL [4000H], 1 ; we store the msb in carry flag
     
     JZ continue ; neither positive nor negative
     
     JC negative
     INC DL
     JMP continue
      
     
     negative:
        INC DH
     
     continue:   
     INC BX
     loop foreach




ret




