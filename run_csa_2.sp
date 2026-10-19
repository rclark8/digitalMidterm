.include csa_2.sp

*.subckt csa_2 a0 b0 a1 b1 cin s0 s1 yout
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

*a toggles every 10ns, b every 20ns, cin every 40ns
Va0  a0  0 pulse(0 3.3 10n 100p 100p 10n  20n)
Vb0  b0  0 pulse(0 3.3 20n 100p 100p 20n  40n)
Va1  a1  0 pulse(0 3.3 40n 100p 100p 40n  80n)
Vb1  b1  0 pulse(0 3.3 80n 100p 100p 80n  160n)
Vcin cin 0 pulse(0 3.3 160n 100p 100p 160n 320n)


xcsa_2 a0 b0 a1 b1 cin s0 s1 yout csa_2

.tran 10p 320n

.control
run
hardcopy csa_2.ps v(a0)+28 v(b0)+24 v(a1)+20 v(b1)+16 v(cin)+12 v(s0)+8 v(s1)+4 v(yout)

*plot v(a0) v(b0)+4 v(a1)+8 v(b1)+12 v(cin)+16
*Splot v(s0) v(s1)+4 v(yout)+8
.endc

.end