#Autor: Fagner Geraldes Braga  
#Data de criação: 14/10/2025  
#Data de atualização: 14/10/2025  
#Versão: 0.01

# ForEach-Object

10, 20, 30, 40 | ForEach-Object -Process {$PSItem/10}

"Java.C++.Python.NodeJs" | Get-Member
"Java.C++.Python.NodeJs" | ForEach-Object -MemberName Split -ArgumentList "."
"Java.C++.Python.NodeJs" | ForEach-Object {$PSItem.Split(".")}

Get-Help ForEach-Object -Parameter MemberName
Get-Help ForEach-Object -Parameter ArgumentList
Get-Help ForEach-Object -Parameter Process

# Pipeline

Start-Process notepad
Get-Process -Name notepad | Stop-Process

# Sort-Object

10,10,20,30,20,20,40 | Sort-Object
10,10,20,30,20,20,40 | Sort-Object -Descending
10,10,20,30,20,20,40 | Sort-Object -Unique

Get-Content .\Teste\nomes.txt | Sort-Object
Get-Content .\Teste\nomes.txt | Sort-Object -Descending

# Where-Object

Get-Service | Where-Object {$PSItem.Status -eq "Stopped"}

# Measure-Object

Get-Content .\Teste\nomes.txt | Measure-Object -Character -Line -Word
"Dog `nCat `nTiger" | Measure-Object -Line -Word -Character

# Group-Object

Get-Item -Path .\Teste\* | Group-Object -Property Extension
Get-Item -Path .\Teste\* | Group-Object -Property Extension -NoElement
Get-Item -Path .\Teste\* | Group-Object -Property Extension -NoElement | Sort-Object -Property Count

1,2,3,4
1..4
1..20 | Group-Object -Property {$PSItem % 2}

# Read-Host

$Password = Read-Host -Prompt "Insira a sua senha"
Write-Host $Password

$Password = Read-Host -Prompt "Insira a sua senha" -AsSecureString
Write-Host $Password

# Tee-Object

Get-Process | Tee-Object -FilePath .\Teste\tee.txt

for ($i=1; $i -le 3; $i++){
    Start-Process notepad
}
Get-Process -Name notepad | Tee-Object -Variable notepad
$notepad
$notepad | Stop-Process

# Format-List

Get-Process | Format-List
Get-Process | Format-List -Property Id, Name, CPU

# Get-ChildItem

Get-ChildItem -Path .\Teste
Get-ChildItem -Path .\Teste -Name
Get-ChildItem -Path .\Teste -Recurse -Force