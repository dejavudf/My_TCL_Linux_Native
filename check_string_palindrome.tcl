
set in "reviver"
set inr [string reverse $in]
set l [string length $in]
for {set i 0} { $i < $l } {incr i} {
  set a [string index $in $i]
  set b [string index $inr $i]
  if { [string equal -nocase $a $b ]} {
      if { $i == [expr $l-1] } {
          puts "$in is palindrome"
          break
      } else {
          continue
      }
  } else {
    puts "$in is not palindrome"
    break 
  }   
}
