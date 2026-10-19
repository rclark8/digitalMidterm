.include rca_3.sp
* .subckt rca_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 cout
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

*a toggles every 10ns, b every 20ns, cin every 40ns
Va0  a0  0 pulse(0 3.3 10n 100p 100p 10n  20n)
Vb0  b0  0 pulse(0 3.3 20n 100p 100p 20n  40n)
Va1  a1  0 pulse(0 3.3 40n 100p 100p 40n  80n)
Vb1  b1  0 pulse(0 3.3 80n 100p 100p 80n  160n)
Va2  a2  0 pulse(0 3.3 160n 100p 100p 160n  320n)
Vb2  b2  0 pulse(0 3.3 320n 100p 100p 320n  640n)
Vcin cin 0 pulse(0 3.3 640n 100p 100p 2560n 5120n)
.tran 10p 5120n

Xdut a0 b0 a1 b1 a2 b2 cin s0 s1 s2 cout rca_3

.control
run
hardcopy rca_3.ps v(a0) v(b0)+4 v(a1)+8 v(b1)+12 v(a2)+16 v(b2)+20 v(cin)+24 v(s0)+28 v(s1)+32 v(s2)+36 v(cout)+40

.endc
.end