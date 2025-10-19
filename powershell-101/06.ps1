#Autor: Fagner Geraldes Braga  
#Data de criação: 29/09/2025  
#Data de atualização: 29/09/2025  
#Versão: 0.01

#ForEach-Object
'SQLServer','ActiveDirectory' |
ForEach-Object {Get-Command -Module $PSItem} |
Group-Object -Property ModuleName -NoElement |
Sort-Object -Property Count -Descending

Get-Help Group-Object -Parameter NoElement

#Foreach
$ComputerName = 'DC01', 'WEB01'
foreach ($Computer in $ComputerName){
    Get-ADComputer -Identity $Computer
}

Get-ADComputer -Identity 'DC01', 'WEB01'

'DC01', 'WEB01' | Get-ADComputer

#For
for ($i=1;$i -lt 5;$i++){
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
}

#Do..until
$number = Get-Random -Minimum 1 -Maximum 10
do {
    $guess = Read-Host -Prompt "What's your guess?"
    if ($guess -lt $number){
        Write-Output 'Too low!'
    }
    elseif ($guess -gt $number){
        Write-Output 'Too high!'
    }
}
until ($guess -eq $number)
Write-Output "$guess is the right choice!"

#Do..while
$number = Get-Random -Minimum 1 -Maximum 10
do {
    $guess = Read-Host -Prompt "What's your guess?"
    if ($guess -lt $number){
        Write-Output 'Too low!'
    }
    elseif ($guess -gt $number){
        Write-Output 'Too high!'
    }
}
while ($guess -ne $number)
Write-Output "$guess is the right choice!"

#While
$date = Get-Date -Date '22 November'
while ($date.DayOfWeek -ne 'Thursday') {
    $date = $date.AddDays(1)
}
Write-Output $date

#Break
for ($i=1;$i -lt 5;$i++){
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
    break
}
#Continue
$i=0
while ($i -lt 5) {
    $i+=1
    if($i -eq 3){
        continue
    }
    Write-Output $i
}

#Return
$number = 1..10
foreach ($n in $number){
    if ($n -ge 4){
        Return $n
    }
}