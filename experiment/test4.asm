
assume cs:main
main segment
  mov ax,20h
  mov ds,ax
  mov cx,3fh
  mov bx,0h

s:mov ds:[bx],bx
  inc bx
  loop s

  mov ax,4c00h
  int 21h
main ends
end


2. 如上题代码，已是最简。


3. 
mov ax,cs
mov cx,17h
