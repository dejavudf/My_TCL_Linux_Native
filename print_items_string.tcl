
set in {a z d e f}
set l [llength $in]
set fl [list]
for {set i [expr $l-1]} {$i >= 0 } {incr i -1} {
    set m [lindex $in $i] 
    set fl [append fl $m " "]
}
puts $fl
