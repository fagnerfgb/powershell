#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 09- Variáveis

#$env:COMPUTERNAME
#$env:OS
#$env:SystemRoot

Clear-Host
$nome = Read-Host "Qual o seu nome ?"
$saudacao = "Ola"
$frase = "$saudacao, $nome"
Write-Host $frase.ToUpper()
Write-Host "O seu nome possui $($nome.length) caracteres"