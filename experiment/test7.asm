assume cs:code,ds:data

data segment
    db '1975','1976','1977','1978','1979','1980','1981','1982'
    db '1983','1984','1985','1986','1987','1988','1989','1990'  ;21*4  84
    db '1991','1992','1993','1994','1995'

    dd 16,22,382,1356,2390,8000,16000,24486,50065.97479,140417  ;84*2  168
    dd 197514,345980,590827,803530,1183000,1843000,2759000
    dd 3753000,4649000,5937000

    dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037  ;21*2  42+168  210
    dw 5635,8226,11542,14430,15257,17800
data ends

table segment
    db 21 dup ('year summ ne ?? ')
table ends

code segment
 go:mov ax,data
    mov ds,ax
    mov si,0
    mov di,208
    mov bx,82
    mov dx,166
    mov cx,21

  i:mov byte ptr al,ds:[si]
    mov ds:[di],al
    inc si
    mov byte ptr al,ds:[si]
    mov ds:[di+1],al
    inc si
    mov byte ptr al,ds:[si]
    mov ds:[di+2],al
    inc si
    mov byte ptr al,ds:[si]
    mov ds:[di+3],al
    inc si
    
    add di,16
    loop i

    mov ax,4c00h
    int 21h
code ends

end go