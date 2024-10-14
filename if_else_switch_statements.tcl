

set lang "SV"
set meth "UVM"


if { $lang == "SV" } {
    puts "Welcome. Systemverilog is completely supported. Create your project."
    if {$meth == "UVM"} {
        puts "Yes. UVM is supported."
    } else {
        puts "URM or OVM is not completely supported!"
    }
} elseif { $lang == "VHDL"} {
    puts "VHDL is supported with limitations."
} else {
    puts "Other languages are not supported by this tool."
}

set langHDL "SV" # "SystemC" for other output
switch $langHDL \
"Verilog"    "puts {Selected Language is Verilog}" \
"VHDL"       "puts {Selected Language is VHDL}" \
"SV"         "puts {Selected Language is Systemverilog}" \
"TCL"        "puts {Selected Language is TCL}" \
"default"    "puts {It's not supported by Vivado}";
