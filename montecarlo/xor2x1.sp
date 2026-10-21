* xor gate
.subckt xor2x1 a b y

*nor gate stage
M0 n2 b n3  vdd tp L={agauss(500n,3n,1)} W={agauss(560n,3n,1)}
M1 n3 a vdd vdd tp L={agauss(500n,3n,1)} W={agauss(560n,3n,1)}

M2 n2 a vss vss tn L={agauss(600n,3n,1)} W={agauss(360n,3n,1)}
M3 n2 b vss vss tn L={agauss(600n,3n,1)} W={agauss(360n,3n,1)}

* output stage
M4 n0 n2 vdd vdd tp L={agauss(500n,3n,1)} W={agauss(2.25666*820n,3n,1)}	$ width must be computed
M5  y a  n0  vdd tp L={agauss(500n,3n,1)} W={agauss(2.25666*820n,3n,1)}	$ width must be computed
M6  y b  n0  vdd tp L={agauss(500n,3n,1)} W={agauss(2.25666*820n,3n,1)}	$ width must be computed

M7  y n2 vss vss tn L={agauss(600n,3n,1)} W={agauss(820n,3n,1)}
M8  y a  n1  vss tn L={agauss(600n,3n,1)} W={agauss(820n,3n,1)}
M9 n1 b  vss vss tn L={agauss(600n,3n,1)} W={agauss(820n,3n,1)}

.model tn nmos level=54 version=4.8.2 TOXE=8.00n
.model tp pmos level=54 version=4.8.2 TOXE=7.90n
.ends

