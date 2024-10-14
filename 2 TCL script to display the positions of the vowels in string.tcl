set in "MANPOWER"
for {set i 0} {$i < [string length $in]} { incr i} {
    if { [string equal -nocase [string index $in $i] "a"] == 1 } {
        puts "$i : [string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "e"] == 1 } {
        puts "$i: [string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "i"] == 1 } {
        puts "$i :[string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "o"] == 1 } {
        puts "$i:[string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "u"] == 1 } {
        puts "$i:[string index $in $i]"
    } else {
        continue
    }
}
