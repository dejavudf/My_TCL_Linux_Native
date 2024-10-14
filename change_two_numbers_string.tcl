#Method1
set str "19230401"
puts "Input String: $str"
regsub -all {[3*]+[4*]} $str {4+3} newstr
puts $newstr

#Method 2
set str "19230401"
puts "Input String: $str"
set str1 [split $str ""]
set newstr {}
foreach x $str1 {
  if {$x == 3} {
        regsub -all "3" $x "4" y
        set newstr [append newstr $y ""]
  } elseif {$x == 4} {
        regsub -all "4" $x "3" y
        set newstr [append newstr $y ""]
  } else {
        set newstr [append newstr $x ""]
  }
}
puts "Output String: $newstr"
puts [string map {3 4 4 3} $str]

#Method 3 -- string Map
puts [string map {3 4 4 3} $str]

