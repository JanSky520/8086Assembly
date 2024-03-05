assume cs:code,ds:data

data segment
    db "Beginner's All-purpose Symbolic Instruction Code.",0
data ends

code segment
begin:
    mov ax,data
    mov ds,ax
    mov si,0
    mov ax,0b800h
    mov es,ax
    mov di,160*10+20*2
    mov bx,0
    call letterc

print:
    mov ch,4
    mov byte ptr cl,ds:[bx]
    cmp cl,0
    je ok
    mov es:[di],cx
    inc bx
    add di,2
    loop print

ok:   
    mov ax,4c00h;
    int 21h;

letterc:
    mov ch,0
    mov byte ptr cl,ds:[si]
    jcxz print
    cmp cl,'a'
    jb i
    cmp cl,'z'
    ja i
    and cl,11011111b
    mov byte ptr ds:[si],cl
  i:inc si
    loop letterc
code ends

end begin