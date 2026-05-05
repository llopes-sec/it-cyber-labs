# Firewall Control — Controle de Acesso

## Problema
Demonstração de controle de acesso a serviços expostos na rede,
aplicando o princípio do menor privilégio.

## Ambiente
- Host: Linux Mint
- Virtualização: VirtualBox
- VM 1: Ubuntu Server 24.04 LTS (serviço + UFW)
- VM 2: OPNsense (firewall de rede)
- Ferramentas: python3, curl, ufw, OPNsense

## Investigação

### 1. Serviço exposto sem controle de acesso
Servidor HTTP subido na VM na porta 8080:

python3 -m http.server 8080


Acesso confirmado pelo host:

![http funcionando](../evidencias/prints/04_http_funcionando.png)

### 2. Aplicação da regra de bloqueio
O bloqueio da porta 8080 foi implementado em duas camadas de segurança:

- Firewall local na VM utilizando UFW
- Firewall de rede utilizando OPNsense

### Firewall local (UFW)
O bloqueio da porta 8080 foi implementado em duas camadas de segurança, ambas virtualizadas:

- Firewall local na VM Ubuntu Server utilizando UFW
- Firewall de rede na VM OPNsense, atuando como gateway entre o host e a VM

Essa abordagem segue o conceito de defense in depth (defesa em profundidade).

Ativação do firewall e criação da regra de bloqueio na VM Ubuntu Server:

```bash
sudo ufw enable
sudo ufw deny 8080
sudo ufw status numbered
```
### Firewall de rede (OPNsense)

Regra aplicada no OPNsense, bloqueando o tráfego externo para a porta 8080:

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
