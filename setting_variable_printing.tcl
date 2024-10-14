puts "******* TCL example: assigning variables and printing *******"

set strVar "The value of double variable is"
set dblVar 1.24
set intVar 10

puts "$strVar $dblVar \tthe integer variable equals to $intVar. \nHere is new line"    

puts {$strVar $dblVar \tthe integer variable equals to $intVar. \nHere is new line}

set dblVar [set intVar 55]
puts "new intVar = $intVar and nested dblVar = $dblVar"

