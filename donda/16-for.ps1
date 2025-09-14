#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 16 - For

Clear-Host
for ($var=1; $var -le 10; $var++){
    Test-Connection "192.168.2.$var"
}