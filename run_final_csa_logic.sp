.include final_csa.sp
.global vdd vss
Vdd vdd vss dc 3.3
Vss vss 0 0

*A=1101 0011 1011 0110
Va0  a0  0 dc 0
Va1  a1  0 dc 3.3
Va2  a2  0 dc 3.3
Va3  a3  0 dc 0
Va4  a4  0 dc 3.3
Va5  a5  0 dc 3.3
Va6  a6  0 dc 0
Va7  a7  0 dc 3.3
Va8  a8  0 dc 3.3
Va9  a9  0 dc 3.3
Va10 a10 0 dc 0
Va11 a11 0 dc 0
Va12 a12 0 dc 3.3
Va13 a13 0 dc 0
Va14 a14 0 dc 3.3
Va15 a15 0 dc 3.3

*B = 0111 0100 0110 0011
Vb0  b0  0 dc 3.3
Vb1  b1  0 dc 3.3
Vb2  b2  0 dc 0
Vb3  b3  0 dc 0
Vb4  b4  0 dc 0
Vb5  b5  0 dc 3.3
Vb6  b6  0 dc 3.3
Vb7  b7  0 dc 0
Vb8  b8  0 dc 0
Vb9  b9  0 dc 0
Vb10 b10 0 dc 3.3
Vb11 b11 0 dc 0
Vb12 b12 0 dc 3.3
Vb13 b13 0 dc 3.3
Vb14 b14 0 dc 3.3
Vb15 b15 0 dc 0

Vci ci 0 dc 0

Xdut a0 b0 a1 b1 a2 b2 a3 b3 a4 b4 a5 b5 a6 b6 a7 b7 a8 b8 a9 b9 a10 b10 a11 b11 a12 b12 a13 b13 a14 b14 a15 b15 ci s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 cout final_csa

.control
op
let d15 = v(s15) gt 1.65
let d14 = v(s14) gt 1.65
let d13 = v(s13) gt 1.65
let d12 = v(s12) gt 1.65
let d11 = v(s11) gt 1.65
let d10 = v(s10) gt 1.65
let d9  = v(s9)  gt 1.65
let d8  = v(s8)  gt 1.65
let d7  = v(s7)  gt 1.65
let d6  = v(s6)  gt 1.65
let d5  = v(s5)  gt 1.65
let d4  = v(s4)  gt 1.65
let d3  = v(s3)  gt 1.65
let d2  = v(s2)  gt 1.65
let d1  = v(s1)  gt 1.65
let d0  = v(s0)  gt 1.65
let dcout = v(cout) gt 1.65
echo "       1101 0011 1011 0110"
echo "      +0111 0100 0110 0011"
echo "S    = $&d15$&d14$&d13$&d12 $&d11$&d10$&d9$&d8 $&d7$&d6$&d5$&d4 $&d3$&d2$&d1$&d0"
echo "cout = $&dcout"
.endc
.end
