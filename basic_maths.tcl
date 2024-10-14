
set tcl_precision 4;

puts "1/2 is [expr {1/2}]"

set x 300
set y 60
set pi 3.141592

set result [expr {$x/$y}]
puts "x/y is $result"

set ysin [expr {sin($y*$pi/180)}]
puts "sin($y) equals to $ysin"

set pwrVar [expr { sqrt($x-44) }]
puts "The sqrt($pwrVar) equals to $pwrVar"

set rndVar 13.5567
puts "Rounded $rndVar equals to [expr {round($rndVar)}]"

set condVar 12
puts "While variable=$condVar, the result of if-else condition [expr { $condVar<10? sqrt($condVar) : pow($condVar, 2) } ]"

set condVar 196
puts "While variable=$condVar, the result of if-else condition [expr { $condVar>10? sqrt($condVar) : pow($condVar, 2) } ]"

