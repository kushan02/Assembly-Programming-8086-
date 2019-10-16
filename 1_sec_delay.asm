
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0000H
MOV DS, AX

MOV BX, 0FFFFH

MOV BX, 000FH

foreach: 
  ; Delay 500000 (7A120h).
  ; Approx delay = 7A000 (0007 A000)
  mov CX, 7      ;HIGH WORD.
  mov DX, 0A000H ;LOW WORD.
  mov AH, 86H    ;WAIT.
  int 15H
  
  DEC BX
  JNZ foreach
    

ret




