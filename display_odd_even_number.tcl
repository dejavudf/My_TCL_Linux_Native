# DISPLAY ODD NUMBER
for {set a 0} {$a < 100} {incr a} {
  for {set b $a} {$b <= $a} {incr b} {
    if { [expr $a%2 !=0]} {
          puts $a
    }
  }
}

# DISPLAY EVEN NUMBER
for {set a 0} {$a < 100} {incr a} {
  for {set b $a} {$b <= $a} {incr b} {
    if { [expr $a%2 ==0]} {
          puts $a
    }
  }
}
