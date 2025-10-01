# 🌐 Compilar MedeToras Online (Sem Android Studio)

## Opção 1: GitHub Actions (Recomendado)

### Passo 1: Criar Repositório GitHub
1. Crie uma conta no GitHub (se não tiver)
2. Crie um novo repositório público
3. Faça upload da pasta `MedeToras`

### Passo 2: Configurar GitHub Actions
Crie o arquivo `.github/workflows/build.yml`:

```yaml
name: Build Android APK

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Set up JDK 17
      uses: actions/setup-java@v3
      with:
        java-version: '17'
        distribution: 'temurin'
        
    - name: Setup Android SDK
      uses: android-actions/setup-android@v2
      
    - name: Grant execute permission for gradlew
      run: chmod +x gradlew
      
    - name: Build with Gradle
      run: ./gradlew assembleDebug
      
    - name: Upload APK
      uses: actions/upload-artifact@v3
      with:
        name: app-debug
        path: app/build/outputs/apk/debug/app-debug.apk
```

### Passo 3: Baixar APK
1. Vá para a aba "Actions" no GitHub
2. Clique no build mais recente
3. Baixe o arquivo "app-debug" nos artefatos

## Opção 2: Replit (Alternativa)

### Passo 1: Criar Conta no Replit
1. Acesse replit.com
2. Crie uma conta gratuita
3. Crie um novo Repl com template "Android"

### Passo 2: Upload do Projeto
1. Faça upload dos arquivos do MedeToras
2. Configure o ambiente Android no Replit

### Passo 3: Build
```bash
# No terminal do Replit
chmod +x gradlew
./gradlew assembleDebug
```

## Opção 3: Gitpod (Cloud IDE)

### Passo 1: Configurar Gitpod
1. Acesse gitpod.io
2. Conecte com sua conta GitHub
3. Abra seu repositório no Gitpod

### Passo 2: Configurar Ambiente
Crie `.gitpod.yml`:
```yaml
image: gitpod/workspace-android

tasks:
  - init: |
      sdk install java 17.0.7-tem
      sdk use java 17.0.7-tem
      
ports:
  - port: 8080
    onOpen: open-preview
```

### Passo 3: Build
```bash
chmod +x gradlew
./gradlew assembleDebug
```

## Opção 4: Codespaces (GitHub)

### Passo 1: Ativar Codespaces
1. No seu repositório GitHub
2. Clique em "Code" > "Codespaces"
3. Crie um novo Codespace

### Passo 2: Configurar Ambiente
Crie `.devcontainer/devcontainer.json`:
```json
{
  "name": "Android Development",
  "image": "mcr.microsoft.com/devcontainers/java:17",
  "features": {
    "ghcr.io/devcontainers/features/android-sdk:1": {}
  },
  "postCreateCommand": "chmod +x gradlew"
}
```

### Passo 3: Build
```bash
./gradlew assembleDebug
```

## 📋 Comparação das Opções

| Serviço | Gratuito | Facilidade | Velocidade | Recomendação |
|---------|----------|------------|------------|--------------|
| GitHub Actions | ✅ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | **Melhor** |
| Gitpod | ✅ (limitado) | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | Boa |
| Codespaces | ✅ (limitado) | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | Boa |
| Replit | ✅ (limitado) | ⭐⭐⭐ | ⭐⭐⭐ | OK |

## 🎯 Recomendação Final

**Use GitHub Actions** - É gratuito, confiável e gera o APK automaticamente a cada commit!

## 📱 Instalação do APK

Após baixar o APK:
1. Ative "Fontes desconhecidas" no Android
2. Instale o arquivo `app-debug.apk`
3. Abra o aplicativo MedeToras
4. Conceda as permissões necessárias