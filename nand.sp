*nand

.subckt nand a b out 
* defined in main part or need to be: vdd, vss
* tn and tp defined below

* cmos nand gate has four transistors
* two p in parallel, two n in series

M0 out b vdd vdd tp L=5e-7 W=5.6e-7
M1 out a vdd vdd tp L=5e-7 W=5.6e-7

M2 out a n0 vss tn L=6e-7 W=3.6e-7
M3 n0 b vss vss tn L=6e-7 W=3.6e-7

.model tn nmos level=54 version=4.8.2 TOXE=8.00n
.model tp pmos level=54 version=4.8.2 TOXE=7.90n

.ends
