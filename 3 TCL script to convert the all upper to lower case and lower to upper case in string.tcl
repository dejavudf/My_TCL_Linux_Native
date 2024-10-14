set in "Tcl Scripting"
set l [list]
for {set i 0} {$i < [string length $in]} { incr i} {
  set x [string index $in $i]
  if {[string match {[a-z]} $x]} {
        set m [string toupper $x]
        set l [append l $m ""]
  } else {
        set n [string tolower $x] 
        set l [append l $n ""]
  }
}
puts $l
