.include nor.sp
.include inverter.sp
* if not in main file don not duplicate declarations

* or gate
.subckt or a b y 

* Nor
x0 a b norout nor

* Inverter appearance
x1 norout y inverter

.ends or
