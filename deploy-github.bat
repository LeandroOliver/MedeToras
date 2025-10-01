@echo off
echo.
echo ========================================
echo   MedeToras - Deploy GitHub Actions
echo ========================================
echo.
echo 🚀 Abrindo paginas necessarias para deploy...
echo.

REM Abrir GitHub para criar conta/login
echo 📝 1. Criando conta no GitHub...
start "" "https://github.com"
timeout /t 3 /nobreak >nul

REM Abrir página para criar novo repositório
echo 📁 2. Criando repositorio...
start "" "https://github.com/new"
timeout /t 2 /nobreak >nul

echo.
echo ========================================
echo   📋 INSTRUÇÕES RÁPIDAS:
echo ========================================
echo.
echo 1️⃣ Na primeira aba: Crie sua conta no GitHub
echo.
echo 2️⃣ Na segunda aba: Crie um repositório
echo    - Nome: MedeToras
echo    - Marque "Public"
echo    - Clique "Create repository"
echo.
echo 3️⃣ Faça upload de TODOS os arquivos desta pasta:
echo    %CD%
echo.
echo 4️⃣ Aguarde o build automático (5-10 min)
echo.
echo 5️⃣ Baixe o APK na aba "Actions"
echo.
echo ========================================
echo   🎯 RESULTADO: APK PRONTO EM 15 MIN!
echo ========================================
echo.
echo 💡 Dica: Mantenha esta janela aberta para referência
echo.
pause