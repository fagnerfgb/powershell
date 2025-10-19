#Autor: Fagner Geraldes Braga  
#Data de criação: 12/10/2025  
#Data de atualização: 12/10/2025  
#Versão: 0.01

Get-Help Write-Host

Get-Help New-Item

New-Item -Path . -Name "Teste" -ItemType Directory
Get-ChildItem .

New-Item -Path .\Teste -Name "teste.txt" -ItemType File -Value "Teste"
Get-Content .\teste.txt

New-Item -Path .\Teste -Name "teste2.txt" -ItemType File -Value "Teste2"
Get-Content .\Teste\teste2.txt

Copy-Item -Path .\Teste\teste.txt -Destination .\Teste\teste3.txt
Get-ChildItem .\Teste

New-Item -Path . -Name Copy -ItemType Directory
Copy-Item -Path .\Teste\* -Destination .\Copy

Rename-Item -Path .\Copy\teste.txt -NewName fagner.txt

Remove-Item -Path .\Copy\*

Remove-Item -Path .\Teste\* -Include *.txt -Exclude *2*

Move-Item -Path .\Teste\* -Destination .\Copy

Move-Item -Path .\Copy -Destination .\Teste

Get-Item -Path .

Get-Item -Path *

(Get-Item -Path .).LastAccessTime