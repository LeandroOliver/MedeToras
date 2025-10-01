@echo off
echo.
echo ========================================
echo   MedeToras - Build Automatico PC
echo ========================================
echo.

REM Verificar se Java esta instalado
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERRO: Java nao encontrado!
    echo.
    echo 📥 Baixe e instale Java JDK 17:
    echo https://adoptium.net/temurin/releases/?version=17
    echo.
    pause
    exit /b 1
)

echo ✅ Java encontrado!

REM Verificar se ANDROID_HOME esta configurado
if "%ANDROID_HOME%"=="" (
    echo ⚠️  ANDROID_HOME nao configurado
    echo.
    echo 🔧 Configurando automaticamente...
    
    REM Tentar encontrar Android SDK em locais comuns
    if exist "%USERPROFILE%\AppData\Local\Android\Sdk" (
        set ANDROID_HOME=%USERPROFILE%\AppData\Local\Android\Sdk
        echo ✅ Android SDK encontrado em: %ANDROID_HOME%
    ) else if exist "C:\android-sdk" (
        set ANDROID_HOME=C:\android-sdk
        echo ✅ Android SDK encontrado em: %ANDROID_HOME%
    ) else (
        echo ❌ Android SDK nao encontrado!
        echo.
        echo 📥 Baixe Android Command Line Tools:
        echo https://developer.android.com/studio#command-tools
        echo.
        echo 📁 Extraia para: C:\android-sdk
        echo.
        pause
        exit /b 1
    )
)

echo ✅ Android SDK: %ANDROID_HOME%

REM Verificar se gradlew existe
if not exist "gradlew.bat" (
    echo ❌ ERRO: gradlew.bat nao encontrado!
    echo.
    echo 📁 Execute este script no diretorio do projeto MedeToras
    echo.
    pause
    exit /b 1
)

echo ✅ Gradle Wrapper encontrado!
echo.

REM Limpar builds anteriores
echo 🧹 Limpando builds anteriores...
call gradlew.bat clean

REM Compilar o projeto
echo.
echo 🔨 Compilando MedeToras...
echo.
call gradlew.bat assembleDebug

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   ✅ BUILD CONCLUIDO COM SUCESSO!
    echo ========================================
    echo.
    echo 📱 APK gerado em:
    echo app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 📋 Proximos passos:
    echo 1. Transfira o APK para seu Android
    echo 2. Ative "Fontes Desconhecidas" 
    echo 3. Instale o APK
    echo 4. Permita acesso a camera e armazenamento
    echo.
    
    REM Tentar abrir a pasta do APK
    if exist "app\build\outputs\apk\debug" (
        echo 📂 Abrindo pasta do APK...
        start "" "app\build\outputs\apk\debug"
    )
    
) else (
    echo.
    echo ========================================
    echo   ❌ ERRO NO BUILD!
    echo ========================================
    echo.
    echo 🔧 Possiveis solucoes:
    echo 1. Verifique se Java JDK 17 esta instalado
    echo 2. Configure ANDROID_HOME corretamente
    echo 3. Instale Android SDK: sdkmanager "platforms;android-34"
    echo 4. Use o metodo GitHub Actions (mais facil)
    echo.
)

echo.
pause