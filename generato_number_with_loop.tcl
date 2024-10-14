
set l [list]
for {set a 0} {$a <= 100} {incr a} {
  if {[expr $a%2 != 0]} {
    set lf1 [lappend l $a]
  }
}
puts $lf1 
set f [lindex $lf1 end]
##puts $f
for {set b 0} { $b <= $f } { incr b } {
      puts $b
      if { $a == $f } {
        break;
      }
}
