* or gate
.subckt or a b y 

* .include nor.sp
* .include inverter.sp
* if not in main file don not duplicate declarations

* Nor
x0 a b norout nor

* Inverter appearance
x1 norout out inverter

.ends or