# DISPLAY EVEN NUMBER
set i 0
while { $i <= 100} {
    #incr i
    while { [expr $i%2] == 0} {
        puts $i
        incr i
    }
      incr i
}

# DISPLAY ODD NUMBER
set i 0
while { $i <= 100} {
    #incr i
    while { [expr $i%2] != 0} {
        puts $i
        incr i
    }
      incr i
}
