#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 22 - New-Object

Clear-Host
$wshell = New-Object -ComObject wscript.shell
$wshell | Get-Member
$wshell.Popup("Esse curso é muito legal")

$wshell.run("Notepad")
$wshell.AppActivate("Notepad")
Start-Sleep 2
$wshell.SendKeys("Vai Corinthians")