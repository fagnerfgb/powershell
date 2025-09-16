#Autor: Fagner Geraldes Braga  
#Data de criação: 16/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.01

# Aula 23 - Gerenciamento Remoto

Enable-PSRemoting

Invoke-Command -ComputerName DC01 -ScriptBlock {Get-Service}

Enter-PSSession DC01
Get-Service
Exit-PSSession

