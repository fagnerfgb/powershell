#Autor: Fagner Geraldes Braga  
#Data de criação: 21/09/2025  
#Data de atualização: 21/09/2025  
#Versão: 0.01

# Aula 28 - Renomear Computador

$info = Get-WmiObject -Class Win32_computerSystem
$info.name
$info.Rename("LT-FGB2")

Rename-Computer -ComputerName LT-FGB2 -Restart
HOSTNAME

