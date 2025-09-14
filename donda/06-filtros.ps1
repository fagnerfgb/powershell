#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 06 - Filtrando Resultados

Get-Service | Where-Object {$PSItem.Status -eq "Running"}

Get-ChildItem | Where-Object {$PSItem.Name.Length -gt 6}

Get-Service | Where-Object {$PSItem.DisplayName -like "*security*"}