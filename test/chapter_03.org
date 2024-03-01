*检测点3.1

1. mov ax, 1	
   mov dx, ax	
   mov ax, [0000]	AX=2662H
   mov bx, [0001]	BX=E626H
   mov ax, bx	AX=E626H
   mov ax, [0000]	AX=2662H
   mov bx, [0002]	BX=D6E6H
   add ax, bx	AX=FD48H
   add ax, [0004]	AX=2C14H
   mov ax, 0	AX=0000H
   mov al, [0002]	AX=00E6H
   mov bx, 0	BX=0000H
   mov bl, [000C]	BX=0026H
   add al, bl	AX=000CH

2. mov ax, 6622h    cs=2000h, ip=0003h
   jmp 0ff0:0100    cs=0ff0h, ip=0100h
   mov ax, 2000h    cs=0ff0h, ip=0103h
   mov ds,ax        cs=0ff0h, ip=0105h
   mov ax, [0008]   cs=0ff0h, ip=0108h
   mov ax, [0002]   cs=0ff0h, ip=010bh

  程序和数据没有区别，都是内存单元中的二进制码。当内存单元被CS:IP指定时其存储的就被当做程序执行。当内存单元被DS:[address]指定时其存储的就是数据。


*检测点3.2

1. mov bx, 2000h
   mov ss, bx
   mov sp, 0010h

2. mov bx, 1000h
   mov ss, bx
   mov sp, 0000h
