# Script: portas_abertas.ps1
# Descrição: verifica se portas específicas estão abertas em um host
# Objetivo: identificar serviços expostos na rede
# Autor: Lucas

$host = "192.168.0.1"
$ports = 20..25

foreach ($port in $ports) {
    $result = Test-NetConnection -ComputerName $host -Port $port
    if ($result.TcpTestSucceeded) {
        Write-Output "Porta $port aberta"
    } else {
        Write-Output "Porta $port fechada"
    }
}
