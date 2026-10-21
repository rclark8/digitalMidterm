*nor 

.subckt nor a b out

*nor gate stage
M0 out b n0  vdd tp L={agauss(500n,3n,1)} W={agauss(560n,3n,1)}
M1 n0 a vdd vdd tp L={agauss(500n,3n,1)} W={agauss(560n,3n,1)}

M2 out a vss vss tn L={agauss(600n,3n,1)} W={agauss(360n,3n,1)}
M3 out b vss vss tn L={agauss(600n,3n,1)} W={agauss(360n,3n,1)}

.model tp pmos level=54 version=4.8.2 TOXE=7.90n
.model tn nmos level=54 version=4.8.2 TOXE=8.00n

.ends nor
