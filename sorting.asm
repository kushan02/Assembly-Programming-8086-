
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;include 'emu8086.inc'

ORG 100h

MOV AX, 0
MOV DS, AX

MOV [4000H], 65 ; The ASCII Value
MOV [4001H], 34 
MOV [4002H], 84
MOV [4003H], 54
MOV [4004H], 02    
            
; Sort in ascending order

; for(int i = 0; i<n; ++i)
; for(j = 0; j<n-i; ++j)
; if(ar[j] > ar[j+1]) swap

MOV CX, 0005H 
MOV BX, 4004H

outerloop:
                  
    MOV DX, 0004H
    
    MOV BX, 4004H
    
    innerloop: 
    
        MOV AH, [BX]
        MOV AL, [BX-1]
    
        CMP AH, AL
        
        JA continue
  
        MOV [BX], AL
        MOV [BX-1], AH 
        
        continue:
        
        DEC BX
        DEC DX
        JNZ innerloop
    
                  
    loop outerloop


ret  





