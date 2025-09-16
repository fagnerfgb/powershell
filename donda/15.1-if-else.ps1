#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 15.1 - If-Else

Clear-Host
$conn = (Test-Connection www.google.com -Count 1 -Quiet)
if ($conn) {
    Write-Host "Internet Funcionando" -BackgroundColor Green
}
else {
    Write-Host " Internet Fora do ar" -BackgroundColor Red
}