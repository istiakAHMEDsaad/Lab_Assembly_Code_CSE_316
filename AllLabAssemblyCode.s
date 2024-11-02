//enter a character to see if it is lowercase or uppercase

.model small
.stack 100h
.data

str1 db "Enetr first value: $"
str2 db 10,13, "uppercase $"
str3 db 10,13, "lowercase $"
.code
main proc 
    
mov AX, @data
MOV DS, AX

mov ah,9
lea DX, str1
int 21h

mov ah,1
int 21h
MOV BL, AL

cmp al, 65
JL labe17

cmp al,90 
JG labe17

mov ah,9
lea DX,str2
int 21h

labe17:
CMP AL, 97
JL EXIT
Cmp al , 122
JG EXIT

 Mov ah ,9
lea DX ,str3
int 21h

EXIT:
main endp
end main




//largest number between 3 number

.model small
.stack 100h
.data

str1 db "Enter first value: $"
str2 db 10,13,"enter second value: $" 
str3 db 10,13,"enter 3rd value: $"
str4 db 10,13,"the largest value: $"

VAR3 db ?

.code
main proc

      mov AX, @data
      MOV DS, AX

      mov ah,9
      lea DX, str1
      int 21h

      mov ah,1
      int 21h
      MOV BL, AL

      mov ah,9
      lea DX,str2
      int 21h

      mov ah,1
      int 21h
      mov bh, al

      mov ah,9
      lea DX, str3
      int 21h

      mov ah ,1
      int 21h
      mov VAR3,al  
      
      cmp bl,bh
      jl label1
      
      cmp bl,VAR3
      jl label2
      
      mov ah,9
      lea DX,str4
      int 21h  
      
      mov ah,2
      mov dl,bl
      int 21h
      
      jmp label10
      
      label1:
      
      cmp bl,VAR3
      jl label2
               
      mov ah,9
      lea DX,str4
      int 21h
               
      mov ah,2
      mov dl,bh
      int 21h
      
      jmp label10
      
      label2: 
      
      mov ah,9
      lea DX,str4
      int 21h
      
      mov ah,2
      mov dl,VAR3
      int 21h
      
      label10:


main endp
end main



//smallest number between 3 number
model small
.stack 100h
.data

str1 db "Enter first value: $"
str2 db 10,13,"enter second value: $" 
str3 db 10,13,"enter 3rd value: $"
str4 db 10,13,"the smallest value: $"

VAR3 db ?

.code
main proc

      mov AX, @data
      MOV DS, AX

      mov ah,9
      lea DX, str1
      int 21h

      mov ah,1
      int 21h
      MOV BL, AL

      mov ah,9
      lea DX,str2
      int 21h

      mov ah,1
      int 21h
      mov bh, al

      mov ah,9
      lea DX, str3
      int 21h

      mov ah ,1
      int 21h
      mov VAR3,al  
      
      cmp bl,bh
      jg label1
      
      cmp bl,VAR3
      jg label2
      
      mov ah,9
      lea DX,str4
      int 21h  
      
      mov ah,2
      mov dl,bl
      int 21h
      
      jmp label10
      
      label1:
      
      cmp bl,VAR3
      jg label2
               
      mov ah,9
      lea DX,str4
      int 21h
               
      mov ah,2
      mov dl,bh
      int 21h
      
      jmp label10
      
      label2: 
      
      mov ah,9
      lea DX,str4
      int 21h
      
      mov ah,2
      mov dl,VAR3
      int 21h
      
      label10:


main endp
end main





//;enter a hexa decimal value from (A-F) it will print the decimal value

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



//addition of 2 numbers

.model small
.stack 100h
.data
m db "First number : $"
m1 db "Second number : $"
m2 db "addition :$"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,m
    int 21h
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov ah,2
    mov dl,10  ;new line
    int 21h
    mov dl,13
    int  21h
    
    
    mov ah,9
    lea dx,m1
    int 21h 
    
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    mov ah,2
    mov dl,10  ;new line
    int 21h
    mov dl,13
    int  21h
    
    
    
    mov ah,9
    lea dx,m2
    int 21h
    
    
    add bl,cl             ;addition
    sub bl,30h            ;bl=bl+cl
               
               
    
    mov ah,2
    mov dl,bl
    int 21h
     
     main endp

end main


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








//even_odd number  using if else
.data
msg db 'Input a number:$'
msg1 db 'The number $'   
msg2 db ' is ODD $'
msg3 db ' is EVEN $'
.code

main proc   
    mov ax,@data
    mov ds,ax
    ;print input message
    lea dx,msg
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    
    ;print new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    ;;print output message
    lea dx,msg1
    mov ah,9
    int 21h
    
    MOV ax,0 ; clear accumulator register to get correct division result
    mov al,bl   ; dividend (bl) store in AL
    mov bh,2 ;here divisor is bh=2 in decimal because we know if a number 
    ;is divisible by 2 then it's even otherwise it's odd
    ; divisible means if number is divided by 2 the remainder will be zero
    
    div bh ; AL = AL/bh (AL contain quotent)
    
    cmp ah,0   ; ah store remainder so we check if ah=0 
    je EVEN ; je means jump if equal
    jne ODD  ;jne means jump if not equal
    
    EVEN:
        mov ah,2
        mov dl,bl
        add dl,30h  ; convert decimal to hexadecimal to get correct number
        int 21h ;if we want to print any value it must be store in data 
                 ;register either dl or dh
        
        lea dx,msg3
        mov ah,9
        int 21h
        jmp EXIT
        
   ODD:
        mov ah,2
        mov dl,bl 
        add dl,30h  ; convert decimal to hexadecimal to get correct number
        int 21h
        
        lea dx,msg2
        mov ah,9
        int 21h
       
EXIT:
    main endp
end main






//Multiplication

.data
message db 'Input first number:$'
message1 db 'Input second number:$' 
message2 db 'Multiplication of two number is:$' 

.code
@BUBT PRoc ; start procedure
;initialize data segment
MOV AX, @DATA ; store word size input value in AX register
MOV DS,AX  ; store into memory RAM DS portion from AX register


;print input message

LEA DX,message ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h


;input 1st number

MOV AH,1 ; AH=1 (Function declaration for input)  
int 21h ; interrupt service routine 21h or 33D 
;function execute

MOV BL,AL  ; BL= AL
SUB BL,30H ; convert Hexadecimal to decimal

;print new line
MOV AH,2
MOV DL,10 
int 33
MOV DL,13
int 21h 

;input message print

LEA DX,message1 ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h





 ;input 2nd number

MOV AH,1 ; AH=1 (Function declaration for input)  
int 21h ; interrupt service routine 21h or 33D 
;function execute

MOV BH,AL  ; BH= AL
SUB BH,48 ; convert Hexadecimal to decimal

;print new line
MOV AH,2
MOV DL,10 
int 33
MOV DL,13
int 21h 
 
 
; print   message

LEA DX,message2 ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h 
 
;Multiplication

 MOV AX,0
 
 MOV AL, BL ; AL= BL
 MUL BH ; AL = AL * BH
 
MOV BL , AL
ADD BL,30H ; convert decimal to hexadecimal
 
 
MOV AH,2 ; AH=2 (Function declaration for output)
MOV DL,BL; DL=BL
INT 21h ; function execute




@BUBT ENDP ; end procedure   

END @BUBT; exit from procedure or program



//division

.data
message db 'Input first number as dividend:$'
message1 db 'Input second number as divisor:$' 
message2 db 'Quotent is:$' 
message3 db 'Remainder is:$' 
.code
@BUBT PRoc ; start procedure
;initialize data segment
MOV AX, @DATA ; store word size input value in AX register
MOV DS,AX  ; store into memory RAM DS portion from AX register


;print input message

LEA DX,message ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h


;input 1st number

MOV AH,1 ; AH=1 (Function declaration for input)  
int 21h ; interrupt service routine 21h or 33D 
;function execute

MOV BL,AL  ; BL= AL
SUB BL,30H ; convert Hexadecimal to decimal

;print new line
MOV AH,2
MOV DL,10 
int 33
MOV DL,13
int 21h 

;input message print

LEA DX,message1 ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h





 ;input 2nd number

MOV AH,1 ; AH=1 (Function declaration for input)  
int 21h ; interrupt service routine 21h or 33D 
;function execute

MOV BH,AL  ; BH= AL
SUB BH,30H ; convert Hexadecimal to decimal

;print new line
MOV AH,2
MOV DL,10 
int 33
MOV DL,13
int 21h 
 
 
; print   message

LEA DX,message2 ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h 
 
;Division

 MOV AX,0
 
 MOV AL, BL ; AL= BL
 DIV BH ; AL = AL / BH  & AH = AL%BH
 
MOV BL , AL
ADD BL,30H 

MOV BH,AH
ADD BH,30H 
 
 
MOV AH,2 ; AH=2 (Function declaration for output)
MOV DL,BL; DL=BL
INT 21h ; function execute


;print new line
MOV AH,2
MOV DL,10 
int 33
MOV DL,13
int 21h 

; print   message

LEA DX,message3 ;load effective address 
MOV AH,9 ; AH=9 (Function call for string print)
int 21h 



MOV AH,2 ; AH=2 (Function declaration for output)
MOV DL,BH; DL=BH
INT 21h ; function execute

@BUBT ENDP ; end procedure   

END @BUBT; exit from procedure or program


//Fibonacci

org 100h
.model small
.stack 100h
.data
s dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;mov ax,1
    ;mov bx,1
    ;mov cx,8  
    mov bx,0
    mov dx,1
    mov cx,7
      
    level:
        add bx,dx
        mov ax,bx
        mov bx,dx
        mov dx,ax
        loop level
        sub dx,1
        mov s,dx
          
 ;loop1:
     ; add ax,bx
     ; mov dx,ax
     ; mov ax,bx
     ; mov bx,dx
     ; loop loop1
     ; sub bx,1
     ; mov [s],bx
      
    ;  mov ah,4ch
     ; int 21h
       
    
main endp
end main  




//addition of double digit

Zary
Zary Ays
.stack 20h
.data
msg db 'Input first number:$'
msg1 db 'Input second number:$'
msg2 db 'Summation of two number:$'
number1 db 1 ; int i =1
;number db ? ;  int i;
number2 db 1

.code

main proc 
    ; initialize data segment
    mov ax,@data
    mov ds,ax
    
    ; print input message
    
    lea dx,msg
    mov ah,9
    int 21h
    
    
    ;input first number
    
    
    MOV CL,0
    MOV CH,10
    TOP:
    MOV AH,1 ;input a single character
    INT 21H
    
    CMP AL,13 ; AL -13
    JNE CAL
    JMP LAST
    CAL:
     MOV BL,AL
     SUB BL,30H
     MOV AL,CL ; AL = CL =0
     MUL CH  ;  AL = AL * CH = 0 * 10 = 0
     MOV CL,AL 
     ADD CL,BL
     JMP TOP
     LAST:  
     MOV number1,CL
     
     ;print new line
     
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 33
     
    ; print input message
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    
    ;input second number
    
    
    MOV CL,0 
    MOV CH,10D
    TOP1:
    MOV AH,1
    INT 21H
    CMP AL,13D
    JNE CAL1
    JMP LAST1
    CAL1:
     MOV BL,AL
     SUB BL,30H
     MOV AL,CL
     MUL CH
     MOV CL,AL 
     ADD CL,BL
     JMP TOP1
     LAST1:  
     MOV number2,CL 
     
     
    
     ;print new line
     
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 33
     
     ;print message
     lea dx,msg2
    mov ah,9
    int 21h
    
      MOV BL,number1
      MOV BH,number2
      
      MOV AL,BH
      AND BH,0
      AND AH,0
      
      
    ;ADD 
    ADD BX,AX ; bl = bl+bh
     
    ;Store result into STACK 
     MOV AX,BX
     MOV CL,10D
     MOV CH,0
     ;AND AX,0
     ;MOV AX,BX
     TOP5:
     DIV CL  ;  AL = AX/CL   & AH= AX%CL
     AND DX,0
     MOV DL,AH
     PUSH DX
     INC CH
     AND AH,0
     CMP AL,0
     JNE TOP5 
     
     
     ;print result     
     
     MOV AH,2 
     TOP6:
     POP DX
     ADD DL,30H
     INT 21H   
     DEC CH
     CMP CH,0
     JNE TOP6 
     
     
    main endp
end main
