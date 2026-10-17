.include xor2x1.sp
* xor2x1 a b y
.include and.sp
* and a b y 
.include or.sp
* or a b y 

* full adder
.subckt fulladder a b cin s cout

* two xor, two and, one or
* xor1 = x0, xor2 = x1
* and1 for a,b = x2
* out1 output of xor1
* and2 for out1,c = x3
* aout1 
* or for aout1, aout2 = x4


* two xor, two and, one or
* xor1, xor2
Xxor1 a b xout1 xor
Xxor2 xout1 cin s xor

* out1 output of xor1
* and1 for out1, cin
Xand1 xout1 cin aout1 and

* and2 for a,b
Xand2 a b aout2 and

* aout1, aout2
* or for aout1,aout2
Xor aout1 aout2 cout or

.ends




