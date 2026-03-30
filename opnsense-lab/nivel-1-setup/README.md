# Nível 1 — Setup Inicial

## Objetivo
Instalar e configurar o OPNsense em ambiente virtualizado com acesso via painel web.

## Ambiente
- Host: Linux Mint
- Virtualizador: VirtualBox
- Firewall: OPNsense 26.1.2
- RAM da VM: 512MB
- Disco da VM: 15GB

## O que foi feito
- Download da ISO do OPNsense
- Criação da VM com 2 adaptadores de rede (NAT + Host Only)
- Instalação do OPNsense via instalador UFS
- Acesso ao painel web via navegador

## Resultado
Painel web acessível em https://192.168.56.101

## O que eu aprendi
Entendi na prática a diferença entre WAN e LAN:
a WAN é a interface conectada via NAT simulando a internet,
enquanto a LAN é a rede interna que o firewall vai controlar.

O principal aprendizado foi que ambientes de segurança 
exigem persistência, erros fazem parte do processo de configuração
e saber interpretar mensagens de erro é tão importante 
quanto seguir o passo a passo.
