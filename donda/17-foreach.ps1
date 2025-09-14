#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 17 - Foreach

Clear-Host
ForEach ($numeros in 1,2,3,4,5,6,7,8) {
    echo $numeros
}

Clear-Host
foreach ($arquivos in Get-ChildItem) {
    if ($arquivos.IsReadOnly){
        Write-Host $arquivos.FullName
    }
}

Get-Process Notepad | foreach kill