# 💻 Compilar MedeToras no PC (Sem Android Studio)

## 🚀 Método 1: Usando apenas JDK + Android SDK (MAIS SIMPLES)

### 📋 Pré-requisitos
1. **Java JDK 17** (obrigatório)
2. **Android SDK Command Line Tools** (leve)

### 🔧 Instalação Rápida

#### 1️⃣ Instalar Java JDK 17
```bash
# Baixe e instale do site oficial:
# https://adoptium.net/temurin/releases/?version=17
```

#### 2️⃣ Baixar Android SDK Command Line Tools
```bash
# Baixe apenas as ferramentas de linha de comando (muito menor que Android Studio):
# https://developer.android.com/studio#command-tools
```

#### 3️⃣ Configurar Variáveis de Ambiente
```powershell
# Adicione ao PATH do Windows:
ANDROID_HOME=C:\android-sdk
JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.x-hotspot
PATH=%PATH%;%ANDROID_HOME%\cmdline-tools\latest\bin;%ANDROID_HOME%\platform-tools;%JAVA_HOME%\bin
```

#### 4️⃣ Instalar Componentes Necessários
```bash
# Execute no PowerShell:
sdkmanager "platforms;android-34" "build-tools;34.0.0" "platform-tools"
```

#### 5️⃣ Compilar o Projeto
```bash
# No diretório do projeto:
cd MedeToras
.\gradlew assembleDebug
```

**APK gerado em:** `app\build\outputs\apk\debug\app-debug.apk`

---

## 🌐 Método 2: Build Online (ZERO INSTALAÇÃO)

### GitHub Actions (Recomendado)
1. Crie conta no GitHub (gratuito)
2. Faça upload do projeto
3. O build roda automaticamente
4. Baixe o APK pronto

**Tempo:** ~10 minutos | **Instalação:** 0 MB

### Gitpod (Browser)
1. Acesse: `https://gitpod.io`
2. Conecte com GitHub
3. Abra o projeto
4. Execute: `./gradlew assembleDebug`

---

## ⚡ Método 3: Docker (Para Desenvolvedores)

```dockerfile
# Dockerfile já configurado
FROM openjdk:17-jdk-slim
RUN apt-get update && apt-get install -y wget unzip
# ... resto da configuração automática
```

```bash
# Build com Docker:
docker build -t medetoras-builder .
docker run -v ${PWD}:/workspace medetoras-builder
```

---

## 📊 Comparação de Métodos

| Método | Tempo Setup | Espaço Disco | Dificuldade | Recomendado |
|--------|-------------|--------------|-------------|-------------|
| **GitHub Actions** | 5 min | 0 MB | ⭐ | ✅ **SIM** |
| **JDK + SDK** | 15 min | ~500 MB | ⭐⭐ | ✅ **SIM** |
| **Gitpod** | 2 min | 0 MB | ⭐ | ✅ **SIM** |
| **Docker** | 10 min | ~1 GB | ⭐⭐⭐ | Para devs |
| **Android Studio** | 30 min | ~3 GB | ⭐⭐⭐⭐ | Desnecessário |

---

## 🎯 Recomendação Final

### Para Uso Único:
**Use GitHub Actions** - Zero instalação, 100% online

### Para Desenvolvimento Contínuo:
**Use JDK + Android SDK** - Rápido e leve (500MB vs 3GB do Android Studio)

---

## 🆘 Resolução de Problemas

### Erro: "JAVA_HOME not set"
```bash
# Windows:
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.x-hotspot

# Verificar:
java -version
```

### Erro: "SDK not found"
```bash
# Verificar instalação:
sdkmanager --list

# Reinstalar se necessário:
sdkmanager "platforms;android-34"
```

### Erro: "gradlew not found"
```bash
# Dar permissão (Linux/Mac):
chmod +x gradlew

# Windows - usar:
.\gradlew.bat assembleDebug
```

---

## 📱 Instalação do APK

1. **Ativar "Fontes Desconhecidas"** no Android
2. **Transferir APK** para o celular
3. **Instalar** tocando no arquivo
4. **Permitir permissões** de câmera e armazenamento

---

**💡 Dica:** Se você só quer testar o app uma vez, use o GitHub Actions. Se vai desenvolver mais, instale o JDK + SDK que é muito mais leve que o Android Studio!