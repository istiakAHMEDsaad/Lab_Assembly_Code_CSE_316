//enter a hexa decimal value from (A-F) it will print the decimal value

.MODEL SMALL
.STACK 100h
.DATA

.CODE

main proc
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL  
    
    MOV AH,2
    MOV DL,10
    INT 21H
      
    MOV AH,2
    MOV DL,13
    INT 21H  
    
    MOV AH,2
    MOV DL,49
    INT 21H
    
    SUB CL,17 
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MAIN ENDP
    END MAIN