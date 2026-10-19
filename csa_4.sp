.include rca_4.sp
*.subckt rca_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 cout

.include mux2x1.sp
*.subckt mux2x1 a b s y

.subckt csa_4 a0 b0 a1 b1 a2 b2 a3 b3 cin s0 s1 s2 s3 yout

xr4top a0 b0 a1 b1 a2 b2 a3 b3 0 s00 s10 s20 s30 c0 rca_4
xr4bot a0 b0 a1 b1 a2 b2 a3 b3 3.3 s01 s11 s21 s31 c1 rca_4

xm1 s00 s01 cin s0 mux2x1 
xm2 s10 s11 cin s1 mux2x1 
xm3 s20 s21 cin s2 mux2x1 
xm4 s30 s31 cin s3 mux2x1 
xmout c0 c1 cin yout mux2x1 

.ends