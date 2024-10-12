TCL (loopings):

-> FOR:

for {set i 0} {$i < 10 } { incr i +1} {
puts "$i menor que 10" 
} 
for {set i 10} {$i > 1} {incr i -1} {
puts "$i maior que 10"
}

-> FOREACH:

set 30 000
set 20 00
set 10 0
set 00 ""
set lista {1 5 11 50 101 500 1001 3000} 
foreach i $lista { 
	if {  $i < 10 } {
		puts 23$30$i
	} elseif {  $i < 100 } {
                puts 23$20$i
        } elseif {  $i < 1000 } {
                puts 23$10$i
        } elseif {  $i > 999 } {
                puts 23$00$i
        } 
}

-> WHILE:

set contador 0
while "$contador < 101" {
    set contador [expr {$contador + 1}]
    if {$contador > 101} {
    puts “terminado” break
    } else {
    exec sleep 1
    puts "segundos: $contador" continue
} 
}


-> FOR + INCR

for {set i 0} {$i < 10} {incr i} {
    puts "I inside first loop: $i"
}

for {set i 3} {$i < 2} {incr i} {
    puts "I inside second loop: $i"
}

puts "Start"
set i 0
while {$i < 10} {
    puts "I inside third loop: $i"
    incr i
    puts "I after incr: $i"
}

set i 0
incr i
# This is equivalent to:
set i [expr {$i + 1}]
