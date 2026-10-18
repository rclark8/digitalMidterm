.include rca_4.sp
*.subckt rca_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 cout

.include mux2x1.sp
*.subckt mux2x1 a b s y

.subckt csa_4 ....

rtop a0 b0 a1 b1 a2 b2 a3 b3 0 s0 s1 s2 s3 c0 rca_4

rbot a0 b0 a1 b1 a2 b2 a3 b3 1 s4 s5 s6 s7 c1 rca_4

m1 a b s y mux2x1 
m2 a b s y mux2x1 
m3 a b s y mux2x1 
m4 a b s y mux2x1 
mout a b s y mux2x1 

.ends