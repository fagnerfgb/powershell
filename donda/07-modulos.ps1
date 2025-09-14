#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 07 - Módulos

Get-Module -ListAvailable

Get-Command -Module SmbShare
Get-SmbShare

Import-Module ActiveDirectory
Get-Command -Module ActiveDirectory

Get-PSRepository

Install-Module -name PSDownr -Force
Get-Command -Module PSDownr
Get-Help -Name Get-YoutubeVideo -Full