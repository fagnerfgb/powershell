#Autor: Fagner Geraldes Braga  
#Data de criação: 21/09/2025  
#Data de atualização: 21/09/2025  
#Versão: 0.01

# Aula 27 - Acessando o PowerShell através da Web com o PSWA

Install-WindowsFeature -name WindowsPowershellWebAccess -computername DC01 -includemanagementtools
Install-PSwaWebapplication -webapplication PSWA -UseTestCertificate

Add-PSwaauthorizationrule -computerGroupName * -configurationname * -usergroupname *
Get-pswaauthotizationrule