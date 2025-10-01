# 📱 Compilar MedeToras usando Termux (Android)

## Passo 1: Instalar Termux
1. Baixe o **Termux** da F-Droid ou GitHub
2. Abra o Termux e execute os comandos abaixo

## Passo 2: Configurar Ambiente
```bash
# Atualizar pacotes
pkg update && pkg upgrade

# Instalar dependências
pkg install openjdk-17 gradle git

# Verificar instalação
java -version
gradle -version
```

## Passo 3: Transferir Projeto
1. Copie a pasta `MedeToras` para o armazenamento interno do Android
2. No Termux, navegue até a pasta:
```bash
cd /sdcard/MedeToras
```

## Passo 4: Compilar
```bash
# Dar permissão ao gradlew
chmod +x gradlew

# Compilar o APK
./gradlew assembleDebug

# O APK será gerado em:
# app/build/outputs/apk/debug/app-debug.apk
```

## Passo 5: Instalar
```bash
# Instalar o APK gerado
pm install app/build/outputs/apk/debug/app-debug.apk
```

## Dicas:
- Use `termux-setup-storage` para acessar arquivos do Android
- O processo pode demorar na primeira vez (download de dependências)
- Certifique-se de ter pelo menos 2GB de espaço livre