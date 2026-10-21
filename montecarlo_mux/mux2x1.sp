* mux2x1

.subckt mux2x1 a b s y

* invert the output
mo0 y ny vdd vdd tp L={agauss(500n,3n,1)} W={agauss(1.87651*820n,3n,1)}
mo1 y ny vss vss tn L={agauss(600n,3n,1)} W={agauss(820n,3n,1)}

* invert s
m0 ns s vdd vdd tp L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}
m1 ns s vss vss tn L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}

* these networks generate the inverted output y
* pullup networks
* if s is 0 and a is 0 then the output should be 1
m2 ny s n00x vdd tp L={agauss(500n,3n,1)} W={agauss(2.16896*820n,3n,1)}
m3 n00x a vdd vdd tp L={agauss(500n,3n,1)} W={agauss(2.16896*820n,3n,1)}
* if s is 1 and b is 0 then the output should be 1
m4 ny ns n1x0 vdd tp L={agauss(500n,3n,1)} W={agauss(2.16896*820n,3n,1)}
m5 n1x0 b vdd vdd tp L={agauss(500n,3n,1)} W={agauss(2.16896*820n,3n,1)}

* pulldown networks
* if s is 0 and a is 1 then the output should be 0
m6 ny ns n11x vss tn L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}
m7 n11x a vss vss tn L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}
* if s is 1 and b is 1 then the output should be 0
m8 ny s n1x1 vss tn L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}
m9 n1x1 b vss vss tn L={agauss(500n,3n,1)} W={agauss(820n,3n,1)}

.model tp pmos level=54 version=4.8.2 TOXE=7.90n
.model tn nmos level=54 version=4.8.2 TOXE=8.00n

.ends

