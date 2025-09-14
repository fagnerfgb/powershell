#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 19 - Funções
function Get-HDVolume {
    Get-WmiObject Win32_logicaldisk -Filter drivetype=3 | Select-Object DeviceID, @{n='Tamanho (GB)';e={[math]::truncate($PSItem.size / 1GB)}}, @{n='Espaco Livre (GB)';e={[math]::truncate($PSItem.freespace / 1GB)}}
}

Get-HDVolume

function soma {
    param ($a, $b)
    $resultado = $a + $b
    Write-Host "O resultado e $resultado"
}

soma 10 5