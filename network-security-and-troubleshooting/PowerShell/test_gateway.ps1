# Script: test_gateway.ps1
# Descrição: testa conectividade com o gateway padrão
# Objetivo: verificar comunicação com a rede local
# Autor: Lucas

$gateway = (Get-NetRoute | Where-Object {$_.DestinationPrefix -eq "0.0.0.0/0"}).NextHop

Write-Output "Testando conexão com gateway: $gateway"

Test-Connection -ComputerName $gateway -Count 2
