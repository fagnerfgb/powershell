#Autor: Fagner Geraldes Braga  
#Data de criação: 25/09/2025  
#Data de atualização: 25/09/2025  
#Versão: 0.01

Get-Service |
Where-Object CanPauseAndContinue -eq $true |
Select-Object -Property *

Get-Service -Name W32Time |
Select-Object -Property *

$Service = 'w32time' ; Get-Service -Name $Service

Get-Service -Name W32Time
Get-Service | Where-Object Name -eq W32Time

Get-Service |
Select-Object -Property DisplayName, Running, Status |
Where-Object CanPauseAndContinue

Get-Service |
Where-Object CanPauseAndContinue |
Select-Object -Property DisplayName, Running, Status

help Stop-Service -Full

Get-Service -Name W32Time | Get-Member
Get-Service -Name W32Time | Stop-Service # Input Object by value

'w32time' | Get-Member
'w32time' | Stop-Service  # Name parameter by value

$CustomObject = [PSCustomObject]@{
    Name = 'w32time'
}
$CustomObject | Get-Member
$CustomObject | Stop-Service  # Name parameter by Property Name

$CustomObject2 = [PSCustomObject]@{
    Service = 'w32time' 
}
$CustomObject2 | Get-Member
$CustomObject2 | Stop-Service

$CustomObject2 |
Select-Object -Property @{n='Name';e={$PSItem.Service}} |
Stop-Service

Start-Service W32Time -PassThru

'Background Intelligent Transfer Service','Windows Time' |
Out-File -FilePath $env:TEMP\services.txt
Stop-Service -DisplayName (Get-Content $env:TEMP\services.txt)
Start-Service -DisplayName (Get-Content $env:TEMP\services.txt) -PassThru

Find-Module -Name MrToolkit
Find-Module -Name MrToolkit | Install-Module -Force
Get-MrPipelineInput -Name Stop-Service