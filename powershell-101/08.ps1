#Autor: Fagner Geraldes Braga  
#Data de criação: 03/10/2025  
#Data de atualização: 03/10/2025  
#Versão: 0.01

Get-Command -ParameterName ComputerName
Enable-PSRemoting

# One-to-one remoting
$Cred = Get-Credential
Enter-PSSession -ComputerName dc01 -Credential $Cred
Get-Process | Get-Member
Exit-PSSession

# One-to-many remoting
Invoke-Command -ComputerName DC01 {Get-Service -Name W32Time} -Credential $Cred
Invoke-Command -ComputerName DC01 {Get-Service -Name W32Time} -Credential $Cred | Get-Member
Invoke-Command -ComputerName DC01 {Stop-Service -Name W32Time -PassThru} -Credential $Cred

# Sessions
$Session = New-PSSession -ComputerName DC01 -Credential $Cred
Invoke-Command -Session $Session {Start-Service -Name W32Time -PassThru}
Get-PSSession | Remove-PSSession