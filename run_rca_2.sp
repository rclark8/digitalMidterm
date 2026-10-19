.include rca_2.sp
*.subckt rca_2 a0 b0 a1 b1 cin s0 s1 cout
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

*a toggles every 10ns, b every 20ns, cin every 40ns
Va0  a0  0 pulse(0 3.3 10n 100p 100p 10n  20n)
Vb0  b0  0 pulse(0 3.3 20n 100p 100p 20n  40n)
Va1  a1  0 pulse(0 3.3 40n 100p 100p 40n  80n)
Vb1  b1  0 pulse(0 3.3 80n 100p 100p 80n  160n)
Vcin cin 0 pulse(0 3.3 160n 100p 100p 160n 320n)

Xdut a0 b0 a1 b1 cin s0 s1 cout rca_2

.tran 10p 320n

.control
run
hardcopy rca_2.ps v(a0)+28 v(b0)+24 v(a1)+20 v(b1)+16 v(cin)+12 v(s0)+8 v(s1)+4 v(cout)
.endc

.end


