.include rca_3.sp
*.subckt rca_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 cout

.include mux2x1.sp
*.subckt mux2x1 a b s y

.subckt csa_3 a0 b0 a1 b1 a2 b2 cin s0 s1 s2 yout

xr3top a0 b0 a1 b1 a2 b2 0 s00 s10 s20 c0 rca_3

xr3bot a0 b0 a1 b1 a2 b2 3.3 s01 s11 s21 c1 rca_3

xm3 s00 s01 cin s0 mux2x1 
xm4 s10 s11 cin s1 mux2x1 
xm5 s20 s21 cin s2 mux2x1 
xmout c0 c1 cin yout mux2x1 

.ends