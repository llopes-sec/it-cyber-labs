# Script: system_info.py
# Descrição: coleta informações básicas do sistema
# Objetivo: auxiliar na análise de ambiente durante troubleshooting
# Autor: Lucas

import platform
import socket

print("Informações do sistema:\n")

print(f"Sistema Operacional: {platform.system()} {platform.release()}")
print(f"Hostname: {socket.gethostname()}")
print(f"IP Local: {socket.gethostbyname(socket.gethostname())}")
