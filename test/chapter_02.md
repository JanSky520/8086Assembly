* 检测点2.1

mov ax, 62627	AX = F4A3H
mov ah, 31H	AX = 31A3H
mov al, 23H	AX = 3123H
add ax, ax	AX = 6246H
mov bx, 826CH	BX = 826CH
mov cx, ax	CX = 6246H
mov ax, bx	AX = 826CH
add ax, bx	AX = 04D8H
mov al, bh	AX = 0482H
mov ah, bl	AX = 6C82H
add ah, ah	AX = D882H
add al, 6	AX = D888H
add al, al	AX = D810H
mov ax, cx	AX = 6246H

mov ax, 2H
add ax, ax
add ax, ax
add ax, ax


*检测点2.2

1. 00010h~1000fh
2. 1001~2000


*检测点2.3

修改了3次，ip=0
