.include rca_3.sp
*.subckt rca_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 cout

.include mux2x1.sp
*.subckt mux2x1 a b s y

.subckt csa_3 a2 b2 a3 b3 a4 b4 cin s2 s3 s4 yout


rtop a2 b2 a3 b3 a4 b4 0   s0 s1 s2 c0 rca_3

rbot a2 b2 a3 b3 a4 b4 3.3 s4 s5 s6 c1 rca_3

m1 a b s y mux2x1 
m2 a b s y mux2x1 
m3 a b s y mux2x1 
mout a b s y mux2x1 

.ends