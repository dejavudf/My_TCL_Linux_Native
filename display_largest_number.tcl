
set in {a z d e f x y}
#set in {20 12 5 71 35}
set l [llength $in]
#puts [scan format %c x]
for {set i 0} {$i <= $l} { incr i} {
    if { [scan format %c x] == 1 }  {
        if {[lindex $in $i] > [lindex $in $i+1]} {
         puts [lindex $in $i]
        } else {
          puts [lindex $in $i+1]
        }      
    } else {
        if {[lindex $in $i] > [lindex $in $i+1]} {
         puts [lindex $in $i]
        } else {
          puts [lindex $in $i+1]
        } 
    }
}


