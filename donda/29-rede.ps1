#Autor: Fagner Geraldes Braga  
#Data de criação: 21/09/2025  
#Data de atualização: 21/09/2025  
#Versão: 0.01

# Aula 29 - Alterar endereço IP e adicionar computador ao domínio do Active Directory

Get-NetIPConfiguration
New-NetIPAddress 192.168.2.200 -InterfaceAlias Ethernet -DefaultGateway 192.168.2.1 -AddressFamily IPv4 -PrefixLength 24
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 192.168.2.254

Set-NetIPInterface -InterfaceAlias Ethernet -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ResetServerAddresses

Add-Computer -ComputerName LT-FGB -DomainName fgb­.intra -Restart 