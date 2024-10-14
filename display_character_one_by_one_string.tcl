set a "TCL SCRIPTING"
for {set i 0} {$i < [string length $a]} {incr i} {
    puts [string index $a $i]
}
