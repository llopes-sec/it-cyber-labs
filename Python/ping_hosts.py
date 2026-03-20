import os

hosts = ["192.168.0.1", "8.8.8.8"]

for host in hosts:
    response = os.system(f"ping -n 1 {host}")  # Windows
    if response == 0:
        print(f"{host} está ativo")
    else:
        print(f"{host} não respondeu")
