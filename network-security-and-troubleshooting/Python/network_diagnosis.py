# Script: network_diagnosis.py
# Descrição: realiza diagnóstico básico de rede
# Objetivo: identificar problemas comuns de conectividade
# Autor: Lucas

import os

targets = ["8.8.8.8", "1.1.1.1"]

print("Iniciando diagnóstico de rede...\n")

for target in targets:
    print(f"Testando conectividade com {target}...")
    response = os.system(f"ping -n 2 {target}")
    
    if response == 0:
        print(f"[OK] Conectividade com {target} estabelecida\n")
    else:
        print(f"[ERRO] Falha ao conectar com {target}\n")

print("Diagnóstico concluído.")
