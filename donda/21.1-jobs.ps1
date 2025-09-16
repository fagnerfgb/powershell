#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 21.1 - Jobs e Scheduled Jobs

Clear-Host
Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 07:04pm
$umavez = New-JobTrigger -Once -at (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -scriptblock {
    Copy-Item C:\scripts\*.* Y:\Backup -Recurse -Force
}

Get-ScheduledJob Backup | Get-JobTrigger
Get-ScheduledJob Backup | Unregister-ScheduledJob
Get-ScheduledJob