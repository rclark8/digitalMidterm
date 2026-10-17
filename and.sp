.include nand.sp
.include inverter.sp
* if not in main file don not duplicate declarations

* and gate
.subckt and a b y 

* Nand
x0 a b nandout nand

* Inverter appearance
x1 nandout y inverter

.ends and
