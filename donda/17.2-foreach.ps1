#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 17.2 - Foreach

Clear-Host
Start-process Notepad
Start-Sleep 3
Get-Process Notepad | ForEach-Object kill