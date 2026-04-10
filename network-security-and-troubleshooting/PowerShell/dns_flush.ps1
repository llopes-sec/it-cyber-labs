# Script: dns_flush.ps1
# Descrição: limpa o cache DNS do sistema
# Objetivo: resolver problemas de resolução de nomes
# Autor: Lucas

Write-Output "Limpando cache DNS..."
ipconfig /flushdns
Write-Output "Cache DNS limpo com sucesso!"
