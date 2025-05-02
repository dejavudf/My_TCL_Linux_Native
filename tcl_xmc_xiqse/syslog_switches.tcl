#############################################################################
# KLABIN / CAPGEMINI - XMC and XIQ-SE TCL Scripts
#
# Script        : Configure syslog - Switches
# Revision      : 1.0
# Last Updated  : 02/05/2025
# Author: Alexsandro Farias de França (alexsandro.franca@capgemini.com)
# Status: Completed for Extreme EXOS, Cisco, HP Comware and Enterasys
############################################################################

###declara variaveis dos servidores syslog (total 3)
set var VAR_SRV_XMC 10.22.0.135
set var VAR_SRV_XIQSE 10.95.0.52
#set var VAR_SRV_SIEM 10.150.0.19
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
    CLI configure syslog del $VAR_SRV_XMC:514 vr VR-Default local0
    CLI configure syslog del $VAR_SRV_XIQSE:514 vr VR-Default local0
    #CLI configure syslog del $VAR_SRV_SIEM:514 vr VR-Default local0
    #nova config
    CLI configure syslog add $VAR_SRV_XMC:514 vr VR-Default local0
    CLI enable log target syslog $VAR_SRV_XMC:514 vr VR-Default local0
    CLI configure log target syslog $VAR_SRV_XMC:514 vr VR-Default local0 filter DefaultFilter severity Info
    CLI configure log target syslog $VAR_SRV_XMC:514 vr VR-Default local0 match Any
    CLI configure log target syslog $VAR_SRV_XMC:514 vr VR-Default local0 format timestamp seconds date Mmm-dd event-name none priority host-name tag-name
    CLI configure log target syslog $VAR_SRV_XMC from $deviceIP
    CLI configure syslog add $VAR_SRV_XIQSE:514 vr VR-Default local0
    CLI enable log target syslog $VAR_SRV_XIQSE:514 vr VR-Default local0
    CLI configure log target syslog $VAR_SRV_XIQSE:514 vr VR-Default local0 filter DefaultFilter severity Info
    CLI configure log target syslog $VAR_SRV_XIQSE:514 vr VR-Default local0 match Any
    CLI configure log target syslog $VAR_SRV_XIQSE:514 vr VR-Default local0 format timestamp seconds date Mmm-dd event-name none priority host-name tag-name
    CLI configure log target syslog $VAR_SRV_XIQSE from $deviceIP
    #CLI configure syslog add $VAR_SRV_SIEM:514 vr VR-Default local0
    #CLI enable log target syslog $VAR_SRV_SIEM:514 vr VR-Default local0
    #CLI configure log target syslog $VAR_SRV_SIEM:514 vr VR-Default local0 filter DefaultFilter severity Info
    #CLI configure log target syslog $VAR_SRV_SIEM:514 vr VR-Default local0 match Any
    #CLI configure log target syslog $VAR_SRV_SIEM:514 vr VR-Default local0 format timestamp seconds date Mmm-dd event-name none priority host-name tag-name
    #CLI configure log target syslog $VAR_SRV_SIEM from $deviceIP
    CLI save config
    CLI y
ENDIF

###configura syslog nos switches ENTERASYS
IF ([string equal $vendor "enterprises.5624"]) THEN
    #limpeza do que ja existe
    CLI clear logging server 1
    CLI clear logging server 2
    #CLI clear logging server 3
    #nova config
    CLI set logging server 1 facility local0 ip-addr $VAR_SRV_XMC severity 7 state enable
    CLI set logging server 2 facility local0 ip-addr $VAR_SRV_XIQSE severity 7 state enable
    #CLI set logging server 3 facility local0 ip-addr $VAR_SRV_SIEM severity 7 state enable 
    CLI set logging server 1 facility local0 ip-addr $VAR_SRV_XMC severity information state enable
    CLI set logging server 2 facility local0 ip-addr $VAR_SRV_XIQSE severity information state enable
    #CLI set logging server 3 facility local0 ip-addr $VAR_SRV_SIEM severity information state enable  
ENDIF

###configura syslog nos switches CISCO
IF ([string equal $vendor "Cisco"]) THEN
    #limpeza do que ja existe
    CLI config t
    CLI no logging host $VAR_SRV_XMC
    CLI no logging host $VAR_SRV_XIQSE
    #CLI no logging host $VAR_SRV_SIEM
    #nova config
    CLI logging host $VAR_SRV_XMC
    CLI logging host $VAR_SRV_XIQSE
    #CLI logging host $VAR_SRV_SIEM
    CLI logging facility local0
    CLI logging trap info
    CLI end
    CLI wr
ENDIF

###configura syslog nos switches HP
IF ([string equal $family "HP"]) THEN
#limpeza do que ja existe
    CLI system-view
    CLI info-center enable
    CLI undo info-center loghost $VAR_SRV_XMC
    CLI undo info-center loghost $VAR_SRV_XIQSE
    #CLI undo info-center loghost $VAR_SRV_SIEM
    CLI info-center loghost $VAR_SRV_XMC channel loghost facility local0
    CLI info-center loghost $VAR_SRV_XMC facility local0
    CLI info-center loghost $VAR_SRV_XIQSE channel loghost facility local0
    CLI info-center loghost $VAR_SRV_XIQSE facility local0
    #CLI info-center loghost $VAR_SRV_SIEM channel loghost facility local0
    #CLI info-center loghost $VAR_SRV_SIEM facility local0
    CLI info-center source default channel loghost log level informational state on
    CLI info-center source default loghost level informational
    CLI save
    CLI y
    CLI
    CLI y
ENDIF
puts $VAR_FINAL

