* full adder testbench
.include fulladder_updated.sp
.global vdd vss

Vdd vdd vss dc 3.3
Vss vss 0 0

*a toggles every 10ns, b every 20ns, cin every 40ns
Va   a   0 pulse(0 3.3 10n 100p 100p 10n 20n)
Vb   b   0 pulse(0 3.3 20n 100p 100p 20n 40n)
Vcin cin 0 pulse(0 3.3 40n 100p 100p 40n 80n)

Xdut a b cin s cout fulladder

.tran 10p 80n

.control
run
hardcopy fulladder.ps v(a)+16 v(b)+12 v(cin)+8 v(s)+4 v(cout)
.endc

.end
