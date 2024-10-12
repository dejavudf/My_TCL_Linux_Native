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
