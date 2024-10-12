set contador 0

while "$contador < 101" {
    set contador [expr {$contador + 1}]
    if {$contador > 101} {
    exit
    } else {
    exec sleep 1
    puts "segundos: $contador"
} 
}
