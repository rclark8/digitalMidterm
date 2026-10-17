*inverter

.subckt inverter in out vdd vss

M1 vdd in out vdd tp <SIZE PARAMETERS>
+ AS=75.3f AD=75.3f PS=1.23u PD=1.23u
M2 out in vss vss tn <SIZE PARAMETERS>
+ AS=75.3f AD=75.3f PS=1.12u PD=1.23u

*BSIM 4.8.2 models
.model tp pmos level=54 version=4.8.2 <OXIDE LAYER THICKNESS>
.model tn nmos level=54 version=4.8.2 <OXIDE LAYER THICKNESS>

.ends inverter
