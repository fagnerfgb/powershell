#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 15 - If-Else

$serv = Get-Service -Name EFS
if ($serv.Status -eq "Running"){
    Write-Host "Em execução"
} else {
    Write-Host "Parado"
}

$conn = (Test-Connection www.google.com -Count 1 -Quiet)
if ($conn) {
    Write-Host "Internet OK" -BackgroundColor Green
}
else {
    Write-Host " Internet Fora" -BackgroundColor Red
}