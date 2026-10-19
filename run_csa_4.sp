.include csa_4.sp
*.subckt csa_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 yout
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
Va3  a3  0 pulse(0 3.3 640n 100p 100p 640n  1280n)
Vb3  b3  0 pulse(0 3.3 1280n 100p 100p 1280n 2560n)
Vcin cin 0 pulse(0 3.3 2560n 100p 100p 2560n 5120n)

xcsa_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 yout csa_4

.tran 10p 5120n

.control
run
*hardcopy csa_4.ps v(a0) v(b0)+4 v(a1)+8 v(b1)+12 v(a2)+16 v(b2)+20 v(a3)+24 v(b3)+28 v(cin)+32 v(s0)+36 v(s1)+40 v(s2)+44 v(s3)+48 v(yout)+52
plot v(a0) v(b0)+4 v(a1)+8 v(b1)+12 v(a2)+16 v(b2)+20 v(a3)+24 v(b3)+28 v(cin)+32
plot v(s0) v(s1)+4 v(s2)+8 v(s3)+12 v(yout)+16

.endc
.end


