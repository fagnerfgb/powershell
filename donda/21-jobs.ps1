#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 16/09/2025  
#Versão: 0.02

# Aula 21 - Jobs e Scheduled Jobs

Workflow workflowdemorado{
    while(1){
        (Get-Date).ToString() + " Script demoradinho"
        Start-Sleep -Seconds 2
    }
}
Clear-Host
workflowdemorado

$wfjob = workflowdemorado -AsJob
$wfjob

Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob