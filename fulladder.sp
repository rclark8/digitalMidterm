* full adder
.subckt fulladder a b cin s cout

* two xor, two and, one or
* xor1 = x0, xor2 = x1
* and1 for a,b = x2
* out1 output of xor1
* and2 for out1,c = x3
* aout1 
* or for aout1, aout2 = x4

* .include xor.sp
* xor2x1 a b y
* .include and.sp
* and a b y 
* .include or.sp
* or a b y 

* two xor, two and, one or
* xor1, xor2
xor1 a b xout1
xor2 xout1 cin s

* out1 output of xor1
* and1 for out1, cin
and1 out1 cin aout1

* and2 for a,b
and2 a b aout2

* aout1, aout2
* or for aout1,aout2
or aout1 aout2 cout




