@echo off
title MENU DE SUPORTE TECNICO T.I - Richard
color 70

:menu_principal
cls
echo =====================================================
echo           MENU DE SUPORTE TECNICO T.I
echo =====================================================
echo.
echo    1.  Comandos de Sistema
echo    2.  Comandos de Rede
echo    3.  Manutencao e Ferramentas
echo    4.  Comandos de Impressao
echo.
echo    99. Sair
echo.
set /p "opcao=Digite sua opcao [1-4]: "

if "%opcao%"=="1" goto menu_sistema
if "%opcao%"=="2" goto menu_rede
if "%opcao%"=="3" goto menu_manutencao
if "%opcao%"=="4" goto menu_impressao
if "%opcao%"=="99" exit

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar...
pause >nul
goto menu_principal

:menu_sistema
cls
echo =====================================================
echo            SUB-MENU: COMANDOS DE SISTEMA
echo =====================================================
echo.
echo    1.  Reparar Arquivos de Sistema (SFC)
echo    2.  Diagnostico de Memoria
echo    3.  Listar Drivers
echo    4.  Abrir Windows Update
echo    5.  Informacoes do Sistema
echo    6.  Gerenciar Usuarios Locais
echo    7.  Verificar Integridade (DISM)
echo    8.  Ver Logs de Eventos
echo    9.  Criar Ponto de Restauracao
echo    10. Abrir Ferramentas do Sistema
echo.
echo    0.  Voltar ao Menu Principal
echo.
set /p "opcao_sis=Digite sua opcao [1-10]: "

if "%opcao_sis%"=="1" (sfc /scannow & pause & goto menu_sistema)
if "%opcao_sis%"=="2" (mdsched & pause & goto menu_sistema)
if "%opcao_sis%"=="3" (echo Listando drivers instalados... & pnputil /enum-drivers & pause & goto menu_sistema)
if "%opcao_sis%"=="4" (control /name Microsoft.WindowsUpdate & goto menu_sistema)
if "%opcao_sis%"=="5" (systeminfo & pause & goto menu_sistema)
if "%opcao_sis%"=="6" (lusrmgr.msc & goto menu_sistema)
if "%opcao_sis%"=="7" (DISM /Online /Cleanup-Image /RestoreHealth & pause & goto menu_sistema)
if "%opcao_sis%"=="8" (eventvwr & goto menu_sistema)
if "%opcao_sis%"=="9" (powershell -command "Checkpoint-Computer -Description 'Ponto_Restauracao_TI' -RestorePointType 'MODIFY_SETTINGS'" & echo Ponto de restauracao criado. & pause & goto menu_sistema)
if "%opcao_sis%"=="10" (control & goto menu_sistema)
if "%opcao_sis%"=="0" goto menu_principal

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar...
pause >nul
goto menu_sistema

:menu_rede
cls
echo =====================================================
echo            SUB-MENU: COMANDOS DE REDE
echo =====================================================
echo.
echo    1.  Verificar Conectividade (Ping)
echo    2.  Rastreamento de Rota (Tracert)
echo    3.  Limpar Cache DNS
echo    4.  Reiniciar Servicos de Rede
echo    5.  Testar Velocidade Basica (ping google.com)
echo    6.  Configuracao de rede detalhada (ipconfig /all)
echo    7.  Conexoes, portas e PIDs ativas no Computador (netstat -ano)
echo    8.  Diagnosticar problemas de DNS (nslookup)
echo    9.  Exibe a tabela ARP (arp -a)
echo    10.  Verificar Conexoes(netstat)
echo    11.  Diagnostico de NetBIOS (nbtstat)
echo.
echo    0.  Voltar ao menu principal
echo.
set /p "opcao_red=Digite sua opcao [1-13]: "

if "%opcao_red%"=="1" (set /p host=Digite o endereco/IP: & ping %host% & pause & goto menu_rede)
if "%opcao_red%"=="2" (set /p rota=Digite o endereco/IP: & tracert %rota% & pause & goto menu_rede)
if "%opcao_red%"=="3" (ipconfig /flushdns & echo Cache DNS limpo com sucesso. & pause & goto menu_rede)
if "%opcao_red%"=="4" (net stop dnscache & net start dnscache & netsh int ip reset & netsh winsock reset & echo Servicos de rede reiniciados. & pause & goto menu_rede)
if "%opcao_red%"=="5" (ping google.com & pause & goto menu_rede)
if "%opcao_red%"=="6" (ipconfig /all & pause & goto menu_rede)
if "%opcao_red%"=="7" (netstat -ano & pause & goto menu_rede)
if "%opcao_red%"=="8" (nslookup & pause & goto menu_rede)
if "%opcao_red%"=="9" (arp -a & pause & goto menu_rede)
if "%opcao_red%"=="10" (netstat & pause & goto menu_rede)
if "%opcao_red%"=="11" (set /p ip_nbt=Digite o endereco/IP: & nbtstat -a %ip_nbt%  & pause & goto menu_rede)
if "%opcao_red%"=="0" goto menu_principal

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar...
pause >nul
goto menu_rede

:menu_manutencao
cls
echo =====================================================
echo          SUB-MENU: MANUTENCAO E FERRAMENTAS
echo =====================================================
echo.
echo    1.  Verificar e Reparar Disco (CHKDSK)
echo    2.  Limpar Arquivos Temporarios e Cache DNS
echo    3.  Desfragmentar Disco (Apenas em HD)
echo    4.  Atualizar Programas com Winget
echo.
echo    0.  Voltar ao Menu Principal
echo.
set /p "opcao_man=Digite sua opcao [1-5]: "

if "%opcao_man%"=="1" (chkdsk C: /f /r & pause & goto menu_manutencao)
if "%opcao_man%"=="2" (echo Limpando arquivos temporarios... & del /s /f /q %temp%\* & echo Limpando cache DNS... & ipconfig /flushdns & pause & goto menu_manutencao)
if "%opcao_man%"=="3" (defrag C: /U /V & pause & goto menu_manutencao)
if "%opcao_man%"=="4" (powershell -command "winget upgrade --all --silent" & pause & goto menu_manutencao)
if "%opcao_man%"=="0" goto menu_principal

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar...
pause >nul
goto menu_manutencao

:menu_impressao
cls
echo =====================================================
echo          SUB-MENU: COMANDOS DE IMPRESSAO
echo =====================================================
echo.
echo    1.  Parar Spooler de Impressao
echo    2.  Iniciar Spooler de Impressao
echo.
echo    0.  Voltar ao Menu Principal
echo.
set /p "opcao_imp=Digite sua opcao [1-2]: "

if "%opcao_imp%"=="1" (net stop spooler & pause & goto menu_impressao)
if "%opcao_imp%"=="2" (net start spooler & pause & goto menu_impressao)
if "%opcao_imp%"=="0" goto menu_principal

echo.
echo Opcao invalida. Pressione qualquer tecla para continuar...
pause >nul
goto menu_impressao