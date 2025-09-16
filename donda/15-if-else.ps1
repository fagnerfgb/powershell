#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 15 - If-Else

Clear-Host
$serv = Get-Service -Name Spooler
if ($serv.Status -eq "Running"){
    Write-Host "Serviço Em execução"
} else {
    Write-Host "Serviço Parado"
}

$conn = (Test-Connection www.google.com -Count 1 -Quiet)
if ($conn) {
    Write-Host "Internet OK" -BackgroundColor Green
}
else {
    Write-Host " Internet Fora" -BackgroundColor Red
}