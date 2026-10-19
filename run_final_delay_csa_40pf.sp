.include final_csa.sp
.global vdd vss
Vdd vdd vss dc 3.3
Vss vss 0 0

* a
Va0  a0  0 pulse(0 3.3 1n 100p 100p 10n 20n)
Va1  a1  0 dc 3.3
Va2  a2  0 dc 3.3
Va3  a3  0 dc 3.3
Va4  a4  0 dc 3.3
Va5  a5  0 dc 3.3
Va6  a6  0 dc 3.3
Va7  a7  0 dc 3.3
Va8  a8  0 dc 3.3
Va9  a9  0 dc 3.3
Va10 a10 0 dc 3.3
Va11 a11 0 dc 3.3
Va12 a12 0 dc 3.3
Va13 a13 0 dc 3.3
Va14 a14 0 dc 3.3
Va15 a15 0 dc 3.3

* b
Vb0  b0  0 dc 3.3
Vb1  b1  0 dc 0
Vb2  b2  0 dc 0
Vb3  b3  0 dc 0
Vb4  b4  0 dc 0
Vb5  b5  0 dc 0
Vb6  b6  0 dc 0
Vb7  b7  0 dc 0
Vb8  b8  0 dc 0
Vb9  b9  0 dc 0
Vb10 b10 0 dc 0
Vb11 b11 0 dc 0
Vb12 b12 0 dc 0
Vb13 b13 0 dc 0
Vb14 b14 0 dc 0
Vb15 b15 0 dc 0

Vci ci 0 dc 0

Xdut a0 b0 a1 b1 a2 b2 a3 b3 a4 b4 a5 b5 a6 b6 a7 b7
+ a8 b8 a9 b9 a10 b10 a11 b11 a12 b12 a13 b13 a14 b14 a15 b15
+ ci s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 cout final_csa

* 10 fF load on every output
Cs0  s0  0 40f
Cs1  s1  0 40f
Cs2  s2  0 40f
Cs3  s3  0 40f
Cs4  s4  0 40f
Cs5  s5  0 40f
Cs6  s6  0 40f
Cs7  s7  0 40f
Cs8  s8  0 40f
Cs9  s9  0 40f
Cs10 s10 0 40f
Cs11 s11 0 40f
Cs12 s12 0 40f
Cs13 s13 0 40f
Cs14 s14 0 40f
Cs15 s15 0 40f
Ccout cout 0 40f

.tran 10p 20n

.control
run
meas tran tr trig v(a0) val=1.65 rise=1 targ v(cout) val=1.65 rise=1
meas tran tf trig v(a0) val=1.65 fall=1 targ v(cout) val=1.65 fall=1
hardcopy final_csa_delay.ps v(a0)+4 v(cout)
let tr_ns = tr*1e9
let tf_ns = tf*1e9
echo "RESULT tr = $&tr_ns ns, tf = $&tf_ns ns"
quit
.endc
.end
