code segment public
    mov dx, seg msg
    mov ds, dx
    mov dx, offset msg
    mov ah, 09h
    int 21h
code ends

data segment public
msg db 'Hello, world!',13,10,'$'
data ends

stack segment stack
    db 100h dup(?)
stack ends
end

