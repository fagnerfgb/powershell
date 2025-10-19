#Autor: Fagner Geraldes Braga  
#Data de criação: 12/10/2025  
#Data de atualização: 12/10/2025  
#Versão: 0.01

get-help -Name Get-Member

'hello' | Get-Member
'hello'.Length
'hello'.ToUpper()

Set-Content -Path .\Teste\fgb.txt -Value "Fagner Geraldes Braga"
Get-Content -Path .\Teste\fgb.txt

Set-Content -Path .\Teste\fgb.txt -Value "Natalia da Paz Almeida", "Fagner Geraldes Braga"
Get-Content -Path .\Teste\fgb.txt -TotalCount 2

Get-Content -Path .\Teste\fgb.txt -Tail 1

Add-Content -Path .\Teste\fgb.txt -Value "Maria Isabel Geraldes"
Get-Content -Path .\Teste\fgb.txt

$Add = Get-Content -Path .\Teste\fgb.txt
Add-Content -Path .\Teste\teste.txt -Value $Add
Get-Content -Path .\Teste\teste.txt

Clear-Content -Path .\Teste\teste.txt
Get-Content -Path .\Teste\teste.txt

Test-Path -Path .\Teste

Get-Date
Get-Date -DisplayHint Date
Get-Date -DisplayHint Time
Get-Date -Format "dd/MM/yyyy"

Write-Host "Ola" -BackgroundColor Yellow -ForegroundColor Blue
