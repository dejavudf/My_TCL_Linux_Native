##Method 1:

set v {e a i o u}
set str "encyclopedia" ; #input string is "encyclopedia"
set l [llength $v]  ; # find the length of the list
set m $str
for {set j 0} { $j < $l } { incr j} {
    puts [set r1 [string first [lindex $v $j] $str]]    ; # search for the vowel letter Eg. "a" from 0th index postion
    puts [set r2 [string last [lindex $v $j] $str] ]    ; ; # search for the  vowel letter Eg. "a" from last index postion
    set m [string replace $m $r1 $r1 " "]   ; # replace the vowel letters with " " in variable m
    set m [string replace $m $r2 $r2 " "]   ; # replace the vowel letters with " " in variable m
}

puts [string map {" " ""} $m];  ; # replaces white spaces with blankspaces


##Method 2:

puts [string map {a "" e "" i "" o "" u ""} "encylcopedia"] ; # replaces directly vowels with blankspaces to remove the vowel characters in string
