#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 18 - While

Clear-Host
$i = 0
while ($true) {
    $i++
    Write-Host "Vou contar ate $i"
    if ($i -ge 1000) {
       break
    }
}