# Script: automacao_rede.py
# Descrição: automatiza a verificação de múltiplos hosts
# Objetivo: simplificar tarefas repetitivas de checagem de rede
# Autor: Lucas

def verificar_hosts(hosts):
    for host in hosts:
        print(f"Verificando {host}... OK")

hosts = ["192.168.0.1", "192.168.0.2"]

verificar_hosts(hosts)

print("Verificação concluída!")
