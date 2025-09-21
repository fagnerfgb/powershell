#Autor: Fagner Geraldes Braga  
#Data de criação: 21/09/2025  
#Data de atualização: 21/09/2025  
#Versão: 0.01

# Aula 26 - Salvando credenciais para scripts de acesso remoto 

Clear-Host
Test-Connection -ComputerName DC01
$cred = Get-Credential fgb\thanos
$rede = New-PSSession -ComputerName (Get-Content C:\servers.txt) -Credential $cred
Invoke-Command $rede { Get-Service }