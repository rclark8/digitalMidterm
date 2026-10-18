.include rca_2.sp
*.subckt rca_2 a0 b0 a1 b1 cin s0 s1 cout

.include mux2x1.sp
*.subckt mux2x1 a b s y

.subckt csa_2 a0 b0 a1 b1 cin s0 s1 yout

xrtop a0 b0 a1 b1 0 s00 s10 c0 rca_2
xrbot a0 b0 a1 b1 3.3 s01 s11 c1 rca_2

xm1 s00 s01 cin s0  mux2x1 
xm2 s10 s11 cin s1  mux2x1 
xmout c0 c1 cin yout mux2x1 

.ends