#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 17.1 - Foreach

Clear-Host
foreach ($arquivos in Get-ChildItem .\donda) {
    if (-not $arquivos.IsReadOnly){
        Write-Host $arquivos.FullName
    }
}