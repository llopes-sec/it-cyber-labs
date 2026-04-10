# Script: firewall_check.ps1
# Descrição: verifica o status dos perfis de firewall do Windows
# Objetivo: validar se o firewall está ativo nos diferentes perfis
# Autor: Lucas

$firewall = Get-NetFirewallProfile | Select-Object Name, Enabled

foreach ($f in $firewall) {
    Write-Output "Perfil: $($f.Name) - Ativado: $($f.Enabled)"
}
