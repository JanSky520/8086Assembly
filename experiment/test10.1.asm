assume ss:stack,ds:data,cs:code

stack segment
    db 128 dup (0)
stack ends

data segment
    db 'welcome to masm!',0
    db 00000010b
data ends

code segment
 go:mov ax,stack
    mov ss,ax
    mov sp,128
    mov ax,data
    mov ds,ax

    mov ax,0b800h
    mov es,ax
    mov di,160*10+30*2
    mov bx,17
    mov si,0
    mov dx,0
    mov cl,0

  i:mov byte ptr dh,ds:[bx]
    mov byte ptr dl,ds:[si]
    mov es:[di],dx
    inc si
    add di,2
    mov byte ptr ch,ds:[si]
    jcxz ok
    call i

 ok:mov ax,4c00h
    int 21h
code ends

end go