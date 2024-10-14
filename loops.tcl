
set i 0
while "$i < 10" {
    set i [expr {$i + 1}]
    if {$i > 6} break
    puts "i=$i"
}
 # break: it's similar to C. If value greater than 6, loop will be interrupted
puts "Here is end of the while loop"

for {set i 0} {$i <= 4} {incr i} {    
    for {set j 0} {$j <= 5} {incr j} {
        puts " Matrix indexes: M{$i}{$j}"
    }
}
