$firewall = Get-NetFirewallProfile | Select-Object Name, Enabled

foreach ($f in $firewall) {
    Write-Output "Perfil: $($f.Name) - Ativado: $($f.Enabled)"
}
