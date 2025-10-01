# 🚀 Como Compilar MedeToras SEM Android Studio

## ✨ Método Mais Fácil: GitHub Actions (100% Online)

### 📋 Pré-requisitos
- Conta no GitHub (gratuita)
- Navegador de internet
- 10 minutos do seu tempo

### 🎯 Passo a Passo Simples

#### 1️⃣ Criar Repositório no GitHub
1. Acesse [github.com](https://github.com) e faça login
2. Clique em **"New repository"** (botão verde)
3. Nome: `MedeToras`
4. Marque **"Public"**
5. Clique **"Create repository"**

#### 2️⃣ Upload dos Arquivos
1. Na página do repositório, clique **"uploading an existing file"**
2. Arraste TODA a pasta `MedeToras` para a área de upload
3. Aguarde o upload completar
4. Escreva: `Projeto MedeToras inicial`
5. Clique **"Commit changes"**

#### 3️⃣ Ativar Build Automático
✅ **Já está configurado!** O arquivo `.github/workflows/build.yml` já foi criado

#### 4️⃣ Iniciar Compilação
1. Vá para a aba **"Actions"** no seu repositório
2. Clique em **"Build MedeToras APK"**
3. Clique **"Run workflow"** → **"Run workflow"**
4. ⏳ Aguarde 5-10 minutos (primeira vez demora mais)

#### 5️⃣ Baixar o APK
1. Quando o build ficar ✅ verde
2. Clique no build concluído
3. Role para baixo até **"Artifacts"**
4. Baixe **"medetoras-debug-apk"**
5. Descompacte o arquivo ZIP

#### 6️⃣ Instalar no Android
1. Transfira o `app-debug.apk` para seu celular
2. Ative **"Fontes desconhecidas"** nas configurações
3. Toque no APK para instalar
4. Abra o **MedeToras** e conceda as permissões

---

## 🎉 Pronto! Seu App Está Funcionando!

### 📱 O que você terá:
- ✅ Captura **ILIMITADA** de fotos
- ✅ Banco de dados robusto
- ✅ Interface moderna
- ✅ Galeria integrada
- ✅ Múltiplos modos de captura

### 🔄 Para Atualizações:
1. Modifique os arquivos no GitHub
2. Faça commit das mudanças
3. O build roda automaticamente
4. Baixe o novo APK

---

## 🆘 Problemas Comuns

### ❌ Build falhou?
- Verifique se todos os arquivos foram enviados
- Aguarde alguns minutos e tente novamente
- Veja os logs na aba "Actions"

### ❌ APK não instala?
- Ative "Fontes desconhecidas" no Android
- Verifique se tem espaço suficiente (50MB+)
- Tente reiniciar o celular

### ❌ App não abre?
- Conceda TODAS as permissões solicitadas
- Verifique se o Android é versão 7.0+ (API 24+)

---

## 💡 Dica Extra: Build Automático

Toda vez que você fizer mudanças no código e der commit, um novo APK será gerado automaticamente! 🎯

**Tempo total: ~15 minutos na primeira vez, ~5 minutos nas próximas!**