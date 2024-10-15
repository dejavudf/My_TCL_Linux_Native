##Method 1:

set v {e a i o u}
set str "encyclopedia" ; 
set l [llength $v]  ; 
set m $str
for {set j 0} { $j < $l } { incr j} {
    puts [set r1 [string first [lindex $v $j] $str]]    ; 
    puts [set r2 [string last [lindex $v $j] $str] ]    ; ; 
    set m [string replace $m $r1 $r1 " "]   ; 
    set m [string replace $m $r2 $r2 " "]   ; 
}

puts [string map {" " ""} $m];  ; 


##Method 2:

puts [string map {a "" e "" i "" o "" u ""} "encylcopedia"] ; 
