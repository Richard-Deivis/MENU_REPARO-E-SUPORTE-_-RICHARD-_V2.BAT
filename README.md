# 🛠️ Menu de Reparo e Suporte Técnico

Ferramenta desenvolvida em Batch Script para centralizar procedimentos de diagnóstico, manutenção preventiva e suporte técnico em ambientes Windows.

O projeto foi criado para facilitar o trabalho de técnicos de suporte, analistas de infraestrutura e profissionais de TI, disponibilizando em um único menu as principais ferramentas nativas do Windows utilizadas no dia a dia.

---

## 📋 Sobre o Projeto

Durante atendimentos técnicos é comum executar diversos comandos para diagnóstico e correção de problemas.

Este script reúne essas funcionalidades em uma interface simples baseada em menu, permitindo acesso rápido a ferramentas de:

- Diagnóstico do sistema operacional
- Diagnóstico de rede
- Manutenção preventiva
- Correção de problemas de impressão
- Atualização de aplicativos

O objetivo é reduzir o tempo de atendimento e padronizar procedimentos técnicos.

---

## 🚀 Funcionalidades

### 🖥️ Comandos de Sistema

Ferramentas voltadas para análise e recuperação do sistema operacional.

#### Recursos disponíveis

- Verificação de integridade dos arquivos do Windows (SFC)
- Reparação da imagem do Windows (DISM)
- Diagnóstico de memória RAM
- Informações detalhadas do sistema
- Gerenciamento de usuários locais
- Acesso ao Windows Update
- Visualizador de Eventos
- Criação de ponto de restauração
- Acesso ao Painel de Controle

### 🌐 Comandos de Rede

Ferramentas para diagnóstico e correção de problemas de conectividade.

#### Recursos disponíveis

- Ping
- Tracert
- Flush DNS
- Reset Winsock
- Reset TCP/IP
- Consulta DNS (NSLookup)
- Configuração de rede (IPCONFIG)
- Visualização de conexões ativas (Netstat)
- Consulta ARP
- Diagnóstico NetBIOS

### 🔧 Manutenção e Ferramentas

Rotinas de manutenção preventiva e corretiva.

#### Recursos disponíveis

- Verificação de disco (CHKDSK)
- Limpeza de arquivos temporários
- Limpeza de cache DNS
- Desfragmentação de disco
- Atualização automática de aplicativos via Winget

### 🖨️ Comandos de Impressão

Ferramentas para correção rápida de falhas relacionadas à impressão.

#### Recursos disponíveis

- Parar serviço de impressão (Spooler)
- Iniciar serviço de impressão (Spooler)

---

## 📂 Estrutura do Menu

```text
=========================================
 MENU DE REPARO E SUPORTE TÉCNICO
=========================================

1 - Comandos de Sistema
2 - Comandos de Rede
3 - Manutenção e Ferramentas
4 - Comandos de Impressão
5 - Sair

=========================================
```

---

## 🔄 Fluxo Operacional

```text
Menu Principal
│
├── Sistema
│   ├── SFC
│   ├── DISM
│   ├── Informações do Sistema
│   ├── Gerenciamento de Usuários
│   └── Eventos
│
├── Rede
│   ├── Ping
│   ├── Tracert
│   ├── DNS
│   ├── Netstat
│   └── Reset de Rede
│
├── Manutenção
│   ├── CHKDSK
│   ├── Limpeza
│   ├── Defrag
│   └── Winget
│
└── Impressão
    ├── Parar Spooler
    └── Iniciar Spooler
```

---

## ⚙️ Requisitos

### Sistemas Operacionais Compatíveis

- Windows 10
- Windows 11
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022

### Permissões

Para utilização completa recomenda-se executar o script como Administrador.

Algumas funcionalidades exigem privilégios elevados:

- SFC
- DISM
- CHKDSK
- Reset de rede
- Controle do serviço de impressão
- Atualização via Winget
- Criação de pontos de restauração

---

## 🛠️ Tecnologias Utilizadas

- Windows Batch Script (.BAT)
- SFC
- DISM
- CHKDSK
- IPCONFIG
- NETSH
- NSLOOKUP
- NETSTAT
- DEFRAG
- WINGET
- Windows Event Viewer

---

## 📚 Principais Comandos Utilizados

| Função | Comando |
|----------|----------|
| Verificação do Sistema | sfc /scannow |
| Reparação da Imagem do Windows | DISM /Online /Cleanup-Image /RestoreHealth |
| Informações do Sistema | systeminfo |
| Diagnóstico de Memória | mdsched |
| Atualizações do Windows | Windows Update |
| Limpeza DNS | ipconfig /flushdns |
| Reset Winsock | netsh winsock reset |
| Teste de Conectividade | ping |
| Rastreamento de Rota | tracert |
| Consulta DNS | nslookup |
| Estatísticas de Rede | netstat |
| Verificação de Disco | chkdsk |
| Desfragmentação | defrag |
| Atualização de Aplicativos | winget upgrade --all |
| Serviço de Impressão | net stop spooler / net start spooler |

---

## 💡 Casos de Uso

### Computador Lento

1. SFC
2. DISM
3. Limpeza de Arquivos Temporários
4. CHKDSK

### Problemas de Internet

1. Ping
2. Flush DNS
3. Reset Winsock
4. NSLookup
5. Tracert

### Problemas de Impressão

1. Parar Spooler
2. Iniciar Spooler

### Atualização de Aplicativos

1. Winget Upgrade All

---

## 🎯 Benefícios

- Centralização das ferramentas administrativas
- Redução do tempo de atendimento
- Padronização dos procedimentos técnicos
- Fácil utilização
- Automatização de tarefas recorrentes
- Diagnóstico rápido de falhas
- Utilização de ferramentas nativas do Windows
- Baixo consumo de recursos

---

## 🔒 Segurança

O script utiliza apenas ferramentas nativas do Windows.

Nenhuma informação é transmitida para serviços externos.

Todas as ações são executadas localmente na estação ou servidor.

---

## 🔮 Melhorias Futuras

- Geração automática de logs
- Exportação de diagnósticos em TXT
- Inventário automático da estação
- Backup antes de reparos críticos
- Integração com PowerShell
- Interface gráfica
- Coleta automática de informações do equipamento
- Relatórios em PDF

---

## 🤝 Contribuição

Sugestões, melhorias e correções são sempre bem-vindas.

Caso encontre algum problema ou tenha ideias para novas funcionalidades, abra uma Issue ou envie uma Pull Request.

---

## 📄 Licença

Este projeto foi desenvolvido para auxiliar atividades de suporte técnico e administração de ambientes Windows.

Uso livre para fins educacionais e corporativos.

---

## 👨‍💻 Autor

### Richard Tech

Especialista em Automação de Processos, Infraestrutura, Suporte Técnico e Administração de Sistemas Windows.

#### Contato

GitHub: https://github.com/Richard-Deivis

LinkedIn: https://www.linkedin.com/in/richard-deivis/

---

⭐ Se este projeto foi útil para você, considere deixar uma estrela no repositório.

**Richard Tech - Automação de Processos e Soluções para Infraestrutura de TI** 🚀
