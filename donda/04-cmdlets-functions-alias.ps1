#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 04 - Cmdlets, Function e Alias

Get-Command -CommandType Cmdlet | more
Get-Command -CommandType Function
Get-Command -CommandType Alias

Get-ChildItem Function:\Clear-Host | Get-Content

Set-Alias limpar Clear-Host