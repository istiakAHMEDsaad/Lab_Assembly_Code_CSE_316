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