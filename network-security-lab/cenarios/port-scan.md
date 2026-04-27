# Port Scan — Reconhecimento com Nmap

## Problema
Simulação de varredura de portas para identificar serviços expostos
e demonstrar o impacto do firewall na superfície de ataque.

## Ambiente
- Host: Linux Mint
- VM: Ubuntu Server 24.04 LTS (VirtualBox)
- Ferramentas: Nmap 7.94, ufw

## Investigação

### 1. Scan antes do firewall
Varredura SYN scan com ufw desabilitado:
sudo nmap -sS 192.168.56.106

Portas abertas identificadas:

![nmap antes firewall](../evidencias/prints/11_nmap_antes_firewall.png)

Resultado:
- 22/tcp — SSH
- 8080/tcp — HTTP

### 2. Ativação do firewall
ufw habilitado na VM:
sudo ufw enable

### 3. Scan depois do firewall
Mesma varredura com ufw ativo:
sudo nmap -sS 192.168.56.106

![nmap depois firewall](../evidencias/prints/12_nmap_depois_firewall.png)

Resultado: 1000 portas filtered — nenhuma acessível externamente.

## Solução
Firewall ativo bloqueando todo tráfego não autorizado.

## Resultado
Antes: 2 portas abertas e visíveis (SSH e HTTP).
Depois: 1000 portas filtered — superfície de ataque drasticamente reduzida.

## Análise de segurança
- Cada porta aberta é um ponto de entrada potencial para um atacante
- Nmap é a ferramenta de reconhecimento mais usada, conhecer a visão do atacante é essencial para defender
- filtered vs closed: filtered significa firewall bloqueou, closed significa sem serviço na porta
- Em ambiente corporativo: varreduras periódicas de portas fazem parte de qualquer programa de gestão de vulnerabilidades
