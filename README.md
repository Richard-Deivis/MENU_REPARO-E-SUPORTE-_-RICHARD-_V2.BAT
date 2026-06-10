# Menu de Reparo e Suporte Técnico - Richard V2

## Descrição

O **Menu de Reparo e Suporte Técnico - Richard V2** é um script Batch desenvolvido para centralizar ferramentas administrativas, diagnósticos e procedimentos de manutenção do Windows em uma interface simples baseada em menu.

Seu objetivo é agilizar atividades de suporte técnico, diagnóstico de problemas, manutenção preventiva e correção de falhas em estações de trabalho.

---

## Funcionalidades

O sistema está dividido em quatro módulos principais:

### 1. Comandos de Sistema

Ferramentas para diagnóstico e reparo do sistema operacional.

#### Recursos disponíveis

- Verificação de integridade dos arquivos do Windows (SFC)
- Diagnóstico de memória RAM
- Listagem de drivers instalados
- Abertura do Windows Update
- Informações detalhadas do sistema
- Gerenciamento de usuários locais
- Reparação da imagem do Windows (DISM)
- Visualizador de Eventos
- Criação de ponto de restauração
- Acesso ao Painel de Controle

---

### 2. Comandos de Rede

Ferramentas para análise e resolução de problemas de conectividade.

#### Recursos disponíveis

- Teste de conectividade (Ping)
- Rastreamento de rota (Tracert)
- Limpeza de cache DNS
- Reinicialização dos componentes de rede
- Teste básico de acesso à internet
- Configuração detalhada de rede
- Visualização de portas e conexões ativas
- Diagnóstico DNS (Nslookup)
- Consulta de tabela ARP
- Estatísticas de rede (Netstat)
- Diagnóstico NetBIOS (Nbtstat)

---

### 3. Manutenção e Ferramentas

Ferramentas de manutenção preventiva e corretiva.

#### Recursos disponíveis

- Verificação e correção de disco (CHKDSK)
- Limpeza de arquivos temporários
- Limpeza de cache DNS
- Desfragmentação de disco
- Atualização automática de aplicativos via Winget

---

### 4. Comandos de Impressão

Ferramentas para solução rápida de problemas de impressão.

#### Recursos disponíveis

- Parar serviço de spooler
- Iniciar serviço de spooler

---

## Requisitos

### Sistema Operacional

- Windows 10
- Windows 11
- Windows Server 2016 ou superior

### Permissões

Alguns recursos exigem execução como Administrador:

- SFC
- DISM
- CHKDSK
- Reinicialização de rede
- Criação de ponto de restauração
- Controle do serviço de impressão
- Atualizações via Winget

---

## Como Executar

1. Localize o arquivo:

```text
MENU - REPARO E SUPORTE - RICHARD V2.BAT
