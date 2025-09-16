#Autor: Fagner Geraldes Braga  
#Data de criação: 16/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.01

# Aula 24 - Sessões Persistentes

Clear-Host

$sessao = New-PSSession -ComputerName DC01
Invoke-Command -Session $sessao -ScriptBlock {
    $i = 0
    while ($true) {
        $i++
        Write-Host "Vou contar ate $i"
        Start-Sleep 1
        if ($i -ge 1000) {
        break
        }
    }
} -AsJob -JobName LongoTrabalho

Get-Command *PSSession*

Get-PSSession 
Receive-PSSession $sessao

Get-Job -Name LongoTrabalho | Receive-Job
Get-Job -Name LongoTrabalho | Stop-Job
Get-Job -Name LongoTrabalho | Remove-Job -Force


Get-PSSession | Disconnect-PSSession
Get-PSSession | Remove-PSSession
