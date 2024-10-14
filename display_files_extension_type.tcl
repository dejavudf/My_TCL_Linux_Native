
set f [glob *]
puts $f
set f1 {}
foreach in $f {
	set f1 [lappend f1 "[ file extension $in ]" ]
} 
puts [set ext [lsort -unique $f1]]
puts [set len [llength $ext]]

foreach i $ext {
  puts "$i files: [glob "*$i"]"
}
 
