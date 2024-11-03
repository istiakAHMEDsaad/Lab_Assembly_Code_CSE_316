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