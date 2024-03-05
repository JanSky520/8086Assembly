* 检测点11.1

1 1 0
1 1 0
1 1 0
1 1 0
0 0 0
0 1 0
0 1 0


* 检测点11.2

sub al, al	    0	0	0	1	1
mov al, 10H	    0	0	0	1	1
add al, 90H	    0	0	1	0	1
mov al, 80H	    0	0	1	0	1
add al, 80H	    1	1	0	1	1
mov al, 0FCH	1	1	0	1	1
add al, 05H	    1	0	0	0	0
add al, 7DH	    1	0	0	0	0
add al, 0BH	    0	1	1	0	1


* 检测点11.3

1. jnb s0   jna s0
2. jb s0    ja s


* 检测点11.4

ax = 1
