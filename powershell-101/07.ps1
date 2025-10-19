#Autor: Fagner Geraldes Braga  
#Data de criação: 02/10/2025  
#Data de atualização: 02/10/2025  
#Versão: 0.01

Get-Command -Noun WMI*
Get-Command -Module CimCmdlets

Get-CimInstance -Query 'Select * from Win32_BIOS'
Get-CimInstance -ClassName Win32_BIOS
Get-CimInstance -ClassName Win32_BIOS | Select-Object -Property SerialNumber

Get-CimInstance -ClassName Win32_BIOS -Property SerialNumber |
Select-Object -Property SerialNumber

Get-CimInstance -ClassName Win32_BIOS -Property SerialNumber |
Select-Object -ExpandProperty SerialNumber

(Get-CimInstance -ClassName Win32_BIOS -Property SerialNumber).SerialNumber

Get-Help Select-Object -Parameter ExpandProperty

Get-CimInstance -ComputerName DC01 -ClassName Win32_BIOS

$CimSession = New-CimSession -ComputerName DC01 -Credential (Get-Credential)
Get-CimInstance -CimSession $CimSession -ClassName Win32_BIOS

Test-WSMan -ComputerName DC01

$DCOM = New-CimSessionOption -Protocol Dcom
$Cred = Get-Credential
$CimSession = New-CimSession -ComputerName DC01 -SessionOption $DCOM -Credential $Cred
Get-CimInstance -CimSession $CimSession -ClassName Win32_BIOS
Get-CimSession
$CimSession = Get-CimSession
Get-CimInstance -CimSession $CimSession -ClassName Win32_BIOS
Get-CimSession | Remove-CimSession