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