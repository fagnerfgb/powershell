#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 21 - Jobs e Scheduled Jobs

Workflow workflowdemorado{
    while(1){
        (Get-Date).ToString() + " Script demoradinho"
        Start-Sleep -Seconds 2
    }
}

workflowdemorado

$wfjob = workflowdemorado -AsJob
$wfjob

Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob

Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 11:28am
$umavez = New-JobTrigger -Once -at (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -scriptblock {
    Copy-Item C:\scripts\*.* Z:\Backup -Recurse -Force
}

Get-ScheduledJob Backup | Get-JobTrigger
Get-ScheduledJob Backup | Unregister-ScheduledJob
Get-ScheduledJob