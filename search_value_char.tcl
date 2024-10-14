
set colours [dict create 1 "black" 4 "white" 2 "brown" 0 "green" 5 orange]
puts [set v [dict get $colours ]]
foreach {x} $v {

    if {[regexp "a" $x match]} {
          puts [dict filter $colours value $x]
    } else {
        continue
    }
}


dict for {k v} $colours {
  if {[string match "*a*" $v] } {   
        puts "$k $v"
  } else  {
    continue
  }
}
