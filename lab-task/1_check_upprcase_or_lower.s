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