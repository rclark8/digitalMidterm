.include csa_3.sp
*.subckt csa_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 yout
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

*a toggles every 10ns, b every 20ns, cin every 40ns
Va0  a0  0 pulse(0 3.3 10n 100p 100p 10n  20n)
Vb0  b0  0 pulse(0 3.3 20n 100p 100p 20n  40n)
Va1  a1  0 pulse(0 3.3 40n 100p 100p 40n  80n)
Vb1  b1  0 pulse(0 3.3 80n 100p 100p 80n  160n)
Va2  a2  0 pulse(0 3.3 160n 100p 100p 160n 320n)
Vb2  b2  0 pulse(0 3.3 320n 100p 100p 320n 640n)
Vcin cin 0 pulse(0 3.3 640n 100p 100p 640n 1280n)

xcsa_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 yout csa_3

.tran 10p 1280n

.control
run
*hardcopy csa_3.ps v(a0)+40 v(b0)+36 v(a1)+32 v(b1)+28 v(a2)+24 v(b2)+20 v(cin)+16 v(s0)+12 v(s1)+8 v(s2)+4 v(yout)

plot v(a0) v(b0)+4 v(a1)+8 v(b1)+12 v(a2)+16 v(b2)+20 v(cin)+24
plot v(s0) v(s1)+4 v(s2)+8 v(yout)+12
.endc
.end