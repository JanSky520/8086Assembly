assume cs:code,ds:data,ss:stack

stack segment
    db 128 dup (0)
stack ends

data segment
    db 'welcome to masm!'
    db 00000010b
    db 00100100b
    db 01110001b
data ends

code segment
 go:mov ax,stack
    mov ss,ax
    mov sp,128

    mov ax,data
    mov ds,ax

    mov ax,0b800h
    mov es,ax

    mov si,0
    mov di,160*10+30*2
    mov bx,16
    mov dx,0

    mov cx,3
  j:push bx
    push cx
    push si
    push di

    mov cx,16
    mov byte ptr dh,ds:[bx]
  i:mov byte ptr dl,ds:[si]
    mov es:[di],dx
    add di,2
    inc si
    loop i

    pop di
    pop si
    pop cx
    pop bx
    add di,160
    inc bx
    loop j

    mov ax,4c00h
    int 21h
code ends

end go
