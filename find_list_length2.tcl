
set lin { 5 6 4 8 9 a}  ; # input list 'lin'
puts [set z [lrange $lin end end]]  ; # assign z with elements at end / last element
puts "The length of the list is: [expr [lsearch $lin "$z" ] + 1]" ; # To display the length of the list the position of last element is incremented to one.
