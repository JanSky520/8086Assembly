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
    mov sp,32
    
    mov ax,data
    mov ds,ax

    mov cx,4

  i:push cx
    mov cx,4
    mov bx,0
    
  j:mov al,ds:[bx+3]
    and al,11011111b
    mov ds:[bx+3],al
    inc bx
    loop j

    pop cx
    loop i
    
    mov ax,4c00h
    int 21h
code ends    
    
end go

