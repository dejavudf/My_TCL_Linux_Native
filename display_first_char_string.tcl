

set in "Tcl is a cross platform language with full unicode support."
set l [list]
puts $in
for {set i 0} {$i < [string length $in]} { incr i} {
  set x [string index $in $i]
  set y [string index $in $i+1]
  set m [expr $i+1]
  set k [expr $i+2]
  if {[string match " " $x]} {
      set in "[ string replace $in $i $m [string toupper [string range $in $i $m]]]"
  } else {
        continue
  }
}
puts $in
