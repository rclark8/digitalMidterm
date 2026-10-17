.include fulladder_updated.sp
*subckt fulladder a b cin s cout

.subckt rca_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 cout

Xfa0 a0 b0 cin s0 c0 fulladder
Xfa1 a1 b1 c0 s1 c1  fulladder
Xfa2 a2 b2 c1 s2 c2  fulladder
Xfa3 a3 b3 c2 s3 cout fulladder

.ends
