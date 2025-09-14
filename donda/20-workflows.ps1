#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 20 - Workflows

workflow tipo-cmdlet {
    Write-Output "Hello World"
}

tipo-cmdlet

function iniciar-editores {
    Start-Process notepad
    sleep 5
    Start-Process notepad
}

iniciar-editores

workflow start-editores{
    Parallel {
        Start-Process notepad
        sleep 5
        Start-Process notepad    
    }
}

start-editores