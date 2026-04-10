# Script: dns_check.py
# Descrição: verifica resolução de nomes DNS
# Objetivo: identificar problemas de resolução de domínio
# Autor: Lucas

import socket

domains = ["google.com", "cloudflare.com"]

for domain in domains:
    try:
        ip = socket.gethostbyname(domain)
        print(f"{domain} resolve para {ip}")
    except:
        print(f"Falha ao resolver {domain}")
