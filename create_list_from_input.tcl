
proc list_create {} {
 set out_list {}
 puts "Enter Element to be Added to List"
 set i 0
 while {1} {
  set in [gets stdin]
  set out_list [lappend out_list $in]
  incr i
  if {[regexp -all -- {\s+} $in ] == 1} {
      break ; # if Space character came it breaks
  }
 }
 puts "Final List:[lrange $out_list 0 end-1]"
 puts "No of Elements in List: [expr $i-1]"
}

list_create


