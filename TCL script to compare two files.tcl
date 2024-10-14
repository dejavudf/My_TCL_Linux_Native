
proc comparison {file1 file2} {
 set f [open $file1 r]
 set f1 [open $file2 r]
 #set linenumber 1
 while {![eof $f1] } {
	gets $f line
	gets $f1 line1
	#puts "$line:$line1"
	if {[string equal -nocase $line $line1] == 1 } {
		if {[eof $f1]} {
			break
		} else {
			continue
		}
	} else {
		puts "File1: $line\nFile2: $line1"
		puts "-------------"
	}
 }
}

comparison myfile.txt myfile1_same.txt
puts "#############################"
comparison myfile.txt myfile1_diff.txt
