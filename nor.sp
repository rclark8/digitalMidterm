*nor 

.subckt nor a b out

*nor gate stage
M0 out b n0  vdd tp L=5e-7 W=5.6e-7
M1 n0 a vdd vdd tp L=5e-7 W=5.6e-7

M2 out a vss vss tn L=6e-7 W=3.6e-7
M3 out b vss vss tn L=6e-7 W=3.6e-7

.model tp pmos level=54 version=4.8.2 TOXE=7.90n
.model tn nmos level=54 version=4.8.2 TOXE=8.00n

.ends nor
