
set in "Tool Command Language"
set a [split $in]
puts $a
set vars [list]
for {set i 0} { $i < [llength $a] } { incr i } {
    puts [set x [lindex $a $i]]
    puts [set y [string index $x 0]]
    set vars [append var $y ""]
}
puts $vars
