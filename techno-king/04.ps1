#Autor: Fagner Geraldes Braga  
#Data de criação: 16/10/2025  
#Data de atualização: 16/10/2025  
#Versão: 0.01

# Arithmetic operators

$a = 20
$b = 30
$c = $a + $b
$a, $b, $c

$x = 'Micro'
$y = 'Soft'
$z = $x + $y
$z

$r = 1,2,3
$t = 'A','B','C'
$u = $r + $t
$u

$a = 10
$b = 4
$c = $a % $b
$c

# Assignment operators

$a = 10
$a

$b = 1,2,3
$b

$c = 'Hello World'
$c

$a = 10
$a += 5
$a

$s = 'Micro'
$s += 'Soft'
$s

$a = 5
$b = $a++
$a, $b

$c = 5
$d = ++$c
$c, $d

# Comparison operators

5 -eq 10
10 -eq 10

20 -le 30
20 -le 19

'Powershell' -like 'Powershell'
'Powershell' -like '*shell'
'Test' -notlike 'Windows'
'Test' -notlike 'Test'

$a = 'A', 'B', 'C'
$a -contains 'C'
$a -contains 'D'

$c = 'Jan','Feb','Mar'
$c -notcontains 'Mar'
$c -notcontains 'Apr'

'Amor e Odio' -replace 'Odio','Alegria'

$a = 1
$a -is [int]

$a = '1'
$a -isnot [int]

# Logical operators

(10 -lt 20) -and (10 -eq 10)
(10 -lt 20) -and (10 -eq 11)

(10 -lt 20) -or (10 -eq 10)
(10 -lt 20) -or (10 -eq 11)

-not (10 -lt 20)
!(10 -lt 20)

# Redirection operators

Get-Process -Name Code > .\process.txt
Get-Content .\process.txt

Get-Process -Name dns >> .\process.txt
Get-Content .\process.txt

Get-ChildItem -Path ., fgb 2>&1 > .\sigma.txt
Get-Content .\sigma.txt

# Split and join operators

$a = 'Windows','Operating','System' 
-join $a

$a = 'A,B,C,D,E'
$a -split ','