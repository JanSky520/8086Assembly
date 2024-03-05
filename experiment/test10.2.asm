assume ss:stack,ds:data,cs:code

stack segment
    db 128 dup (0)
stack ends

data segment
    db 12666,0
    db 00000010b
data ends

tmp segment
    db 0
tmp ends

code segment
 go:mov ax,stack
    mov ss,ax
    mov sp,128
    mov ax,data
    mov ds,ax

    mov bx,0
    mov dx,10
    div ds:[bx]

    mov ax,0b800h
    mov es,ax
    mov di,160*10+30*2
    mov bx,17
    mov si,0
    mov dx,0

    mov ax,4c00h
    int 21h
code ends

end go