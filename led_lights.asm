
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h


MOV AX, 0
MOV DS, AX

MOV [2000H], 53H
MOV [2001H], 34H
MOV [2002H], 74H
MOV [2003H], 75H
MOV [2004H], 76H
MOV [2005H], 0A1H
MOV [2006H], 0E3H
MOV [2007H], 12H
MOV [2008H], 43H
MOV [2009H], 0FFH    

MOV BX, 2000H
MOV CX, 000AH

MOV DL, 50H
MOV DH, 0A0H

foreach: 
    
    MOV AL, [BX]
    
    CMP AL, DL
    
    JBE led1 ; jump if below or equal (JB = jump if below)

    
    CMP AL, DH
    JBE led2

    
    JMP led3  
   
    
    continue:
    
    CMP CX, 0000H
    JE quit ; condition to avoid infinite loop (Jump if equal)
    
    INC BX
    DEC CX
    
    JNZ foreach
    
led1:  
    CMP CX, 0000H
    JE quit ; condition to avoid infinite loop (Jump if equal)
    
    print 'LED 1  '
    JMP continue

led2:
    CMP CX, 0000H
    JE quit ; condition to avoid infinite loop (Jump if equal)
     
    print 'LED 2  '
    JMP continue

led3:
    CMP CX, 0000H
    JE quit ; condition to avoid infinite loop (Jump if equal)
    
    print 'LED 3  '
    JMP continue   
    
quit: HLT




ret




