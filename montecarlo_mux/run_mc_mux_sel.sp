.include mux2x1.sp
.global vdd vss
Vdd vdd vss dc 3.3
Vss vss 0 0

Vs s 0 pulse(0 3.3 1n 100p 100p 5n 10n)
Va a 0 0
Vb b 0 dc 3.3

Xdut a b s y mux2x1
Cy y 0 10f

.tran 10p 6n

.control 
let n = 0
dowhile n < 1000
*mc_source: reload this netlist and create a new circuit inside ngspice.
    mc_source 
    run
    meas tran tsel trig v(s) val=1.65 rise=1 targ v(y) val=1.65 rise=1
    echo $&tsel >> mc_mux_sel.txt
    destroy all
    let n = n + 1
end 
quit
.endc
.end
