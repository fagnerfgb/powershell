#Autor: Fagner Geraldes Braga  
#Data de criação: 21/09/2025  
#Data de atualização: 21/09/2025  
#Versão: 0.01

# Aula 25 - PowerShell Remoto usando máquina fora do domínio

#Servidor
winrm set winrm/config/client @{TrustedHosts="LT-FGB"}
Get-Item WSMAN:\localhost\Client\TrustedHosts
Set-Item WSMAN:\localhost\Client\TrustedHosts "LT-NPA" -Force -Concatenate

#Cliente
Set-Item WSMAN:\localhost\Client\TrustedHosts 'DC01' -Force

Test-Connection -ComputerName DC01
New-PSSession -ComputerName DC01 -Credential fgb\thanos
Enter-PSSession -Id 2