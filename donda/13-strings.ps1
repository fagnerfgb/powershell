#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 13 - Select-String

Get-Help -Name Select-String

Get-Content .\lista.txt | Select-String File

Select-String -Pattern Program -Path .\lista.txt

Get-ChildItem .\*.txt | Select-String -Pattern File -NotMatch
Get-ChildItem .\*.txt | Select-String -Pattern Windows -Context 1,1