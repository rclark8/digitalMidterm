* I did not use the template. The template has four ports; this only has two

* inverter
.subckt inverter in out

M1 out in vdd vdd tp L={agauss(500n,3n,1)} W={agauss(1.56u,3n,1)}
+ AS=75.3f AD=75.3f PS=1.23u PD=1.23u
M2 out in vss vss tn L={agauss(600n,3n,1)} W={agauss(820n,3n,1)}
+ AS=75.3f AD=75.3f PS=1.12u PD=1.23u

.model tp pmos level=54 version=4.8.2 toxe=7.90n
.model tn nmos level=54 version=4.8.2 toxe=8.00n

.ends inverter
