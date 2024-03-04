assume cs:code,ss:stack,ds:data
    
stack segment
    dw 0,0,0,0,0,0,0,0
stack ends

data segment
    db '1. display      '
    db '2. brows        '
    db '3. replace      '
    db '4. modify       '
data ends

code segment
 go:mov ax,stack
    mov ss,ax
    mov sp,16
    
    mov ax,data
    mov ds,ax
    mov bx,0
    mov si,0
    mov cx,4

  i:push cx
    push bx
    mov cx,4
    
  j:mov al,ds:[bx+3+si]
    and al,11011111b
    mov ds:[bx+3],al
    inc bx
    loop j

    pop bx
    pop cx
    add bx,16
    loop i
    
    mov ax,4c00h
    int 21h
code ends    
    
end go

