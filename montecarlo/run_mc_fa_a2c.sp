* full adder Monte Carlo
.include fulladder_updated.sp
.global vdd vss
Vdd vdd vss dc 3.3
Vss vss 0 0

* worst case a-> cout: b=0, cin=1, a rises
Va a 0 pulse (0 3.3 1n 100p 100p 5n 10n)
Vb b 0 dc 0
Vcin cin 0 dc 3.3

Xdut a b cin s cout fulladder
Cs s 0 10f
Ccout cout 0 10f

.tran 10p 10n

.control
let n = 0
dowhile n < 1000
  mc_source
  run
  meas tran ta2c_r trig v(a) val=1.65 rise=1 targ v(cout) val=1.65 rise=1
  meas tran ta2c_f trig v(a) val=1.65 fall=1 targ v(cout) val=1.65 fall=1
  echo $&ta2c_r >> mc_fa_a2c_r.txt
  echo $&ta2c_f >> mc_fa_a2c_f.txt
  destroy all
  let n = n + 1
end
quit
.endc
.end
