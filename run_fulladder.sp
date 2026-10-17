.include fulladder_updated.sp
*.subckt fulladder a b cin s cout
.global vdd vss

Vdd vdd vss dc 3.3v
Vss vss 0 0

Xdut 
