
for { set a 0 } { $a <= 50 } { incr a } {
  for { set b $a } {$b <= $a} {incr b} {
    if {[expr $a%5 == 0 ] && [expr $a%10 == 0 ] } {
      puts "$b is divisible by 5 & 10"
    } elseif {[expr $a%5 == 0 ] } {
      puts "$b is divisible by 5 "
    } elseif { [expr $a%10 == 0 ] } {
      puts "$b is divisible by 10"
    } else {
      puts "$b is not divisible by 5 & 10"
    }
  }
}
