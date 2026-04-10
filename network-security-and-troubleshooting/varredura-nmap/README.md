# 🔍 Varredura de Rede com Nmap

> Utilização do Nmap para descoberta de hosts, identificação de portas abertas, enumeração de serviços e detecção de sistemas operacionais — habilidade fundamental para reconhecimento em ambientes controlados.

---

## 📋 Índice

- [Ambiente](#ambiente)
- [Descoberta de Hosts Ativos](#descoberta-de-hosts-ativos)
- [Varredura de Portas](#varredura-de-portas)
- [Identificação de Serviços e Versões](#identificação-de-serviços-e-versões)
- [Detecção de Sistema Operacional](#detecção-de-sistema-operacional)
- [Scan Completo no Roteador](#scan-completo-no-roteador)
- [Salvando os Resultados](#salvando-os-resultados)
- [Conclusão](#conclusão)
- [Próximos Passos](#próximos-passos)
- [Tecnologias](#tecnologias)

---

## 1️⃣ Ambiente

| Componente | Detalhe |
|---|---|
| 🖥️ Sistema Operacional | Linux Mint (baseado em Ubuntu) |
| 🛠️ Ferramenta principal | Nmap |
| 🌐 Interface utilizada | `wlp2s0` (Wi-Fi) |
| 🔢 IP do host | `192.168.1.10/24` |
| 🗺️ Faixa de rede | `192.168.1.0/24` |

---

## 2️⃣ Descoberta de Hosts Ativos

Varredura inicial para mapear todos os dispositivos ativos na rede sem escanear portas:

```bash
nmap -sn 192.168.1.0/24
```

O flag `-sn` (ping scan) desativa a varredura de portas e apenas verifica quais hosts estão online.

![Hosts ativos](prints/hosts-ativos-nmap.png)

---

## 3️⃣ Varredura de Portas

Varredura das 1000 portas TCP mais comuns em todos os hosts da rede:

```bash
nmap 192.168.1.0/24
```

![Varredura de portas](prints/portas-nmap.png)

---

## 4️⃣ Identificação de Serviços e Versões

O flag `-sV` tenta identificar qual serviço e versão está rodando em cada porta aberta:

```bash
nmap -sV 192.168.1.0/24
```

![Serviços e versões](prints/servicos-nmap.png)

---

## 5️⃣ Detecção de Sistema Operacional

Utiliza técnicas de fingerprinting TCP/IP para identificar o SO de cada host:

```bash
sudo nmap -O 192.168.1.0/24
```

> ⚠️ Requer privilégios root para enviar pacotes raw necessários à detecção.

![Detecção de SO](prints/so-nmap.png)

---

## 6️⃣ Scan Completo no Roteador

O flag `-A` combina detecção de SO, versão de serviços, scripts padrão e traceroute em um único comando:

```bash
sudo nmap -A 192.168.1.1
```

![Scan completo](prints/scan-completo-nmap.png)

---

## 7️⃣ Salvando os Resultados

Output salvo em formato texto para documentação e análise posterior:

```bash
sudo nmap -A 192.168.1.0/24 -oN resultado.txt
```

O flag `-oN` salva o resultado em formato legível. O arquivo `resultado.txt` está disponível neste repositório.

---

## 8️⃣ Conclusão

| Resultado | Status |
|---|---|
| Hosts ativos descobertos | ✅ |
| Portas abertas identificadas | ✅ |
| Serviços e versões enumerados | ✅ |
| Sistemas operacionais detectados | ✅ |
| Resultados exportados para arquivo | ✅ |

> - Este projeto demonstra na prática como funciona o reconhecimento de rede com Nmap.
---

## 🛠️ Tecnologias

![Nmap](https://img.shields.io/badge/Nmap-214478?style=for-the-badge&logo=nmap&logoColor=white)
![Linux Mint](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the-badge&logo=linux-mint&logoColor=white)

---

