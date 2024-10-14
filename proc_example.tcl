
proc divider {val div} {
    if { $div == 0 } {
        puts "You cannot give div=0 Try again."
        return "ZERO DIVISION ERROR! ENDLESS"
    } else {
    set y [expr {$val/$div}];
    return $y
    }
}

set result [divider 2 0]
puts "The result = $result"
