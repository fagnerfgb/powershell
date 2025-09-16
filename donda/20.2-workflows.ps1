#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 20.2 - Workflows

workflow Start-Parallel{
    Parallel {
        Start-Process notepad
        Start-Sleep 5
        Start-Process notepad    
    }
}
Clear-Host
Start-Parallel
Get-Process notepad | ForEach-Object kill