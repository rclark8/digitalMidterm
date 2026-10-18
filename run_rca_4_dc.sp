.include rca_4.sp
* .subckt rca_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 cout
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

* DC  A = 1010, B = 1001, cin = 1
* S should be 0100

Va0 a0 0 dc 0
Vb0 b0 0 dc 3.3
Va1 a1 0 dc 3.3
Vb1 b1 0 dc 0
Va2 a2 0 dc 0
Vb2 b2 0 dc 0
Va3 a3 0 dc 3.3
Vb3 b3 0 dc 3.3

Vcin cin 0 dc 3.3

Xdut a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 cout rca_4

.tran 10p 5n

.control

run

hardcopy rca_4_dc.ps v(s0) v(s1)+4 v(s2)+8 v(s3)+16 v(cout)+20

.endc

.end
