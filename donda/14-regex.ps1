#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 14 - Expressões Regulares

Clear-Host
$email = Read-Host Qual seu e-mail?
$regex = "^[a-z]+\.[a-z]+@contoso.com$"

if ($email -notmatch $regex){
    Write-Host "Errou o endereço de email $email"
    exit
}
Write-Host Acertou!