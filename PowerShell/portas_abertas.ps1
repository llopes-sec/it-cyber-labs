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
