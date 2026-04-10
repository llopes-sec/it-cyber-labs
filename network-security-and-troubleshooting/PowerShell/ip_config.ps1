# Script: ip_config.ps1
# Descrição: exibe configurações de rede do sistema
# Objetivo: auxiliar na identificação de problemas de IP
# Autor: Lucas

Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress, AddressFamily
