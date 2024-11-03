//for loop while loop do while loop (uppercase problem)
.data

msg db 'ALL Uppercase Letter using For Loop:$'
msg1 db 'ALL Uppercase Letter using WHILE Loop:$'
msg2 db 'ALL Uppercase Letter using DO_WHILE Loop:$'



.code
main proc
    ;initialize data segment
    mov ax,@data
    mov ds,ax
    ;print result message
    lea dx,msg
    mov ah,9
    int 21h
    ;FOR LOOP
    MOV AH,2
    MOV DL,65 ; Uppercase letter 'A' decimal ASCII value is 65
    AND CX,0
    MOV CX,26
    @LOOP:
          INT 21H  ; print uppercase letter
          INC DL
    
    LOOP @LOOP
          ;JMP EXIT 
    
    ;print new line
    MOV AH,2
    MOV DL,10
    int 21h
    MOV DL,13
    int 21h
    
    
          
    ;print result message
    lea dx,msg1
    mov ah,9
    int 21h
    ;WHILE LOOP 
    AND DX,0
            MOV   CL, 26 ; CL = 26 (Loop counter)
			MOV   AH, 2  ;  prepare to display
			MOV   DL, 65  ; DL= 'A'
            MOV   BL, 0   ; BL = 0
  TOP:
			CMP  CL , BL  ;  if CL == 0
            JE     END_WHILE
            INT  21H   ; CALL  function to display  
            INC DL
			DEC   CL ;  CL= CL -1
JMP  TOP 
END_WHILE:
        ;JMP EXIT
    ;print new line
    MOV AH,2
    MOV DL,10
    int 21h
    MOV DL,13
    int 21h    
    ;print result message
    lea dx,msg2
    mov ah,9
    int 21h
        
        ;DO_WHILE_LOOP
         AND DX,0
        MOV   CL, 25 ; CL = 25 (Loop counter)
	    MOV   AH, 2  ;  prepare to display
	    MOV   DL, 65  ; DL= 'A'
        MOV   BL ,  0  ; BL= 0
  TOP1:
			
        INT  21H   ; CALL  function to display
		INC DL	
        CMP  CL , BL ;  if CL == 0
        JE     END_DO_WHILE
        DEC   CL ;  CL= CL -1
        JMP  TOP1 
END_DO_WHILE:

    
    
  EXIT:  
    main endp
end main