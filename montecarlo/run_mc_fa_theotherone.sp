* full adder Monte Carlo
.include fulladder_updated.sp
.global vdd vss
Vdd vdd vss dc 3.3
Vss vss 0 0

* a=1, b=0: cin rising makes cout rise and s fall
Va a 0 dc 3.3
Vb b 0 dc 0
Vcin cin 0 pulse(0 3.3 1n 100p 100p 5n 10n)

Xdut a b cin s cout fulladder
Cs s 0 10f
Ccout cout 0 10f

.tran 10p 10n

.control
let n = 0
dowhile n < 1000
  mc_source
  run
  meas tran tc_other trig v(cin) val=1.65 fall=1 targ v(cout) val=1.65 fall=1
  meas tran ts_other trig v(cin) val=1.65 fall=1 targ v(s)    val=1.65 rise=1
  echo $&tc_other $&ts_other >> mc_fa_other.txt
  destroy all
  let n = n + 1
end
quit
.endc
.end
