#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 19.1 - Funções
function soma {
    param ($a, $b)
    $resultado = $a + $b
    Write-Host "O resultado é $resultado"
}
Clear-Host
soma 10 5