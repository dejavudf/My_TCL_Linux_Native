### script version 1.0 - alexsandro
###declara variaveis dos servidores syslog (total 3)
set var VAR_SRV_XMC 10.22.0.135
set var VAR_SRV_XIQSE 10.95.0.52
set var VAR_FINAL "Fim do Script"

#print info do dispositivo antes de inicar o script (ajuda no diag)
puts "IP: $deviceIP"
puts "ID Vendor: $vendor"
puts "ID Device Vendor: $deviceId"
puts "Device Type: $deviceType"
puts "Device Family: $family"
puts "Firmware/SO Version $deviceSoftwareVer"
puts "MIB SysOid: $deviceSysOid"

### configura syslog se switch é extreme
IF ([string equal $vendor "enterprises.1916"]) THEN
    #limpeza do que ja existe
    CLI configure snmpv3 del target-addr "TVv3manager"
    CLI configure snmpv3 del target-addr "TVv3managerW"
    #nova config
    CLI configure snmpv3 add target-addr "XMC" param "TV1v3manager" ipaddress $VAR_SRV_XMC transport-port 162 from $deviceIP tag-list "TVInformTag" vr vr-default
    CLI y
    CLI configure snmpv3 add target-addr "XIQSE" param "TV1v3manager" ipaddress $VAR_SRV_XIQSE transport-port 162 from $deviceIP tag-list "TVInformTag" vr vr-default
    CLI y
    CLI configure snmpv3 add target-params "TV1v3manager" user "manager" mp-model snmpv3 sec-model usm sec-level priv
    CLI y
    CLI configure snmpv3 add notify "TVInformTag" tag "TVInformTag" type inform
    CLI y
    CLI save config
    CLI y
ENDIF

###configura syslog nos switches ENTERASYS
IF ([string equal $vendor "enterprises.5624"]) THEN
    #limpeza do que ja existe
    #nova config
    
ENDIF

###configura syslog nos switches CISCO
IF ([string equal $vendor "Cisco"]) THEN
    #limpeza do que ja existe
    #nova config
    
    CLI end
    CLI wr
ENDIF

###configura syslog nos switches HP
IF ([string equal $family "HP"]) THEN
#limpeza do que ja existe
    CLI save
    CLI y
    CLI
    CLI y
ENDIF
puts $VAR_FINAL


