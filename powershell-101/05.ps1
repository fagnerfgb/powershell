#Autor: Fagner Geraldes Braga  
#Data de criação: 28/09/2025  
#Data de atualização: 28/09/2025  
#Versão: 0.01

Get-Service -Name W32Time | Select-Object -Property Status, DisplayName, Can*
Get-Service -Name W32Time | Select-Object -Property Status, DisplayName, Can* | Format-Table
Get-Service -Name W32Time
Get-Service -Name W32Time | Format-List
Get-Service -Name W32Time | Format-List | Get-Member

Get-Alias
Get-Alias -Name gcm
Get-Alias -Name gcm, gm
Get-Alias gm
Get-Alias -Definition Get-Command, Get-Member

Get-PSProvider
Get-PSDrive
Find-Module -Name sqlserver | Install-Module -Force
Import-Module -Name ActiveDirectory, SqlServer
Get-PSProvider
Get-PSDrive
Get-ChildItem -Path Cert:\LocalMachine\CA

'Powershell' -eq 'powershell'
'Powershell' -ceq 'powershell'
'Powershell' -ne 'powershell'
5 -gt 5
5 -ge 5
5 -lt 10
'Powershell' -like '*shell'
'Powershell' -match '^*.shell$'
$Numbers = 1..10
$Numbers -contains 15
$Numbers -contains 10
$Numbers -notcontains 15
$Numbers -notcontains 10
15 -in $Numbers
10 -in $Numbers
15 -notin $Numbers
10 -notin $Numbers
'Powershell' -replace 'Shell'
'SQL Saturday - Baton Rouge' -replace 'saturday','Sat'
'SQL Saturday - Baton Rouge'.Replace('saturday','Sat')
'SQL Saturday - Baton Rouge'.Replace('Saturday','Sat')