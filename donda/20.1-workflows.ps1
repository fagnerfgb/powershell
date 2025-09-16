#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 20.1 - Workflows

function Start-Editores {
    Start-Process notepad
    Start-Sleep 5
    Start-Process notepad
}
Clear-Host
Start-Editores
Get-Process notepad | ForEach-Object kill