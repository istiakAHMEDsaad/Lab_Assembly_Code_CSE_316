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