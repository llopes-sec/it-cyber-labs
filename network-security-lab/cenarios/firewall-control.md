Cola isso:
markdown

# Firewall Control — Controle de Acesso

## Problema
Demonstração de controle de acesso a serviços expostos na rede,
aplicando o princípio do menor privilégio.

## Ambiente
- Host: Linux Mint
- VM: Ubuntu Server 24.04 LTS (VirtualBox)
- Ferramentas: python3, curl, ufw

## Investigação

### 1. Serviço exposto sem controle de acesso
Servidor HTTP subido na VM na porta 8080:

python3 -m http.server 8080


Acesso confirmado pelo host:

![http funcionando](../evidencias/prints/04_http_funcionando.png)

### 2. Aplicação da regra de bloqueio
Firewall ativado e regra de bloqueio criada via ufw na VM:

sudo ufw enable
sudo ufw deny 8080


![regra firewall](../evidencias/prints/8_regra_firewall.png)

### 3. Teste após bloqueio
Tentativa de acesso bloqueada com timeout:

![http bloqueado](../evidencias/prints/06_http_bloqueado.png)

## Solução
Porta 8080 bloqueada via ufw. Serviço inacessível externamente.

## Resultado
Antes: serviço acessível por qualquer host na rede.
Depois: conexão recusada, timeout imediato.

## Análise de segurança
- Serviço exposto sem controle = superfície de ataque desnecessária
- ufw como controle preventivo: nega por padrão, libera apenas o necessário
- Princípio do menor privilégio aplicado na camada de rede
- Em ambiente corporativo: qualquer serviço exposto deve ter justificativa e controle de acesso
