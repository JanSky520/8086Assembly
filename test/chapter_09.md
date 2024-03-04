* 检测点 9.1

1. db 0
   dw 0

2. mov [bx],bx
   mov [bx+2],cs

3. cs=0006h
   ip=00beh


* 检测点 9.2

    mov cx,[bx]
    jcxz ok
    inc bx
    inc bx


* 检测点 9.3

    add cl,1