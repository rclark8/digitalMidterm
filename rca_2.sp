.include fulladder_updated.sp
*subckt fulladder a b cin s cout

.subckt rca_2 a0 b0 cin a1 b1 s0 s1 cout

Xfa0 a0 b0 cin s0 cout0 fulladder
Xfa1 a1 b1 cout0 s1 cout fulladder

.ends
