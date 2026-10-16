* rewrote using nor.sp and inverter.sp

* xor gate
.subckt xor a b y

*nor gate stage
* .include nor.sp

x1 a b out nor

* output stage
* .include  inverter.sp

x2 out y inverter

.ends xor

