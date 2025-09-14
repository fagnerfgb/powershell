#Autor: Fagner Geraldes Braga  
#Data de criação: 14/09/2025  
#Data de atualização: 14/09/2025  
#Versão: 0.01

# Aula 11 - Hashtable

Clear-Host
$servidores = [ordered]@{Servidor1 = "127.0.0.1"; Servidor2 = "127.0.0.2"; Servidor3 = "127.0.0.3"}
$servidores
$servidores.Count
$servidores.Values
$servidores.Keys

$servidores["Servidor4"] = "127.0.0.4"
$servidores.Remove("Servidor4")

Test-Connection $servidor.Servidor1