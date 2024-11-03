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