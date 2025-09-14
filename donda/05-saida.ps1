#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 05 - Controlando a saída de informações

Get-Process | more
Get-Process | Format-List | more
Get-Process | ConvertTo-Html | Out-File Processos.html
Start-Process Processos.html

Get-Date > lista.txt
Get-Date | Out-File .\lista.txt

type .\lista.txt
Get-Content .\lista.txt

Get-Alias -Definition Get-Content

dir c:\ > lista.txt
Get-Content .\lista.txt
Get-Date >> .\lista.txt
Get-Content .\lista.txt

Update-Help 2> erro.txt

Get-Process | Out-GridView