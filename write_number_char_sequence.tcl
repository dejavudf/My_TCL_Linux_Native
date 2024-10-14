
proc writeAZ {} {
set fout [open "output1.txt" w+]
set in 0
	while { $in <= 100} {
		puts $fout "$in"
		incr in
	}
set in1 A
puts $fout "$in1"
	while { [string compare "$in1" "Z"] != 0 } {
		scan "$in1" %c m
		set g [ format %c [incr m]]
    		set in1 "$g"
    		puts $fout "$g"
	}
close $fout
}

writeAZ 


