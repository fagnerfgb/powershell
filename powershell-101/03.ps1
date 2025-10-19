#Autor: Fagner Geraldes Braga  
#Data de criação: 23/09/2025  
#Data de atualização: 23/09/2025  
#Versão: 0.01

Get-Service -Name W32Time
Get-Service -Name W32Time | Get-Member
Get-Command -ParameterType ServiceController
Get-Service -Name W32Time | Select-Object -Property *
Get-Service -Name W32Time | Select-Object -Property Status, Name, DisplayName, ServiceType
Get-Service -Name W32Time | Select-Object -Property Status, DisplayName, Can*

Get-Service -Name W32Time | Get-Member -MemberType Method
(Get-Service -Name W32Time).Stop()
Get-Service -Name W32Time
Get-Service -Name W32Time | Start-Service -PassThru
Get-Process -Name powershell
Get-Process -Name powershell | Get-Member

#Start-Service -Name W32Time | Get-Member
Start-Service -Name W32Time -PassThru | Get-Member

#Get-Service -Name W32Time | Out-Host | Get-Member

Get-Command -Module ActiveDirectory
Get-ADUser -Identity fagner.braga | Get-Member
Get-ADUser -Identity fagner.braga -Properties * | Get-Member
$Users = Get-ADUser -Identity thanos -Properties *
$Users | Get-Member
$Users | Select-Object -Property Name, LastLogonDate, LastBadPasswordAttempt
Get-ADUser -Identity Thanos -Properties LastLogonDate, LastBadPasswordAttempt