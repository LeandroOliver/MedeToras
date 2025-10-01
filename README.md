# MedeToras - Aplicativo de Captura de Imagens Ilimitada

## Visão Geral

MedeToras é um aplicativo Android moderno desenvolvido com Jetpack Compose que permite captura ilimitada de fotos com armazenamento em banco de dados local. Baseado na análise do Timbeter, o aplicativo foi projetado para superar limitações de quantidade de imagens e oferecer uma experiência de usuário superior.

## Características Principais

### 🚀 Funcionalidades Implementadas

- **Captura Ilimitada de Fotos**: Sem restrições de quantidade
- **Armazenamento em Banco de Dados**: Sistema robusto com Room Database
- **Interface Moderna**: Desenvolvida com Jetpack Compose
- **Múltiplos Modos de Captura**:
  - Captura única
  - Captura múltipla (5 fotos em sequência)
  - Captura contínua
- **Galeria Integrada**: Visualização e gerenciamento de imagens
- **Controles de Câmera**: Zoom, flash, foco
- **Estatísticas**: Total de imagens e espaço utilizado

### 🛠️ Tecnologias Utilizadas

- **Kotlin**: Linguagem principal
- **Jetpack Compose**: Interface de usuário moderna
- **CameraX**: API de câmera avançada
- **Room Database**: Persistência de dados
- **Hilt**: Injeção de dependência
- **Coroutines**: Programação assíncrona
- **Material Design 3**: Design system moderno

## Estrutura do Projeto

```
MedeToras/
├── app/
│   ├── src/main/
│   │   ├── java/com/medetoras/app/
│   │   │   ├── camera/          # Gerenciamento de câmera
│   │   │   ├── data/            # Banco de dados e repositórios
│   │   │   ├── di/              # Injeção de dependência
│   │   │   ├── navigation/      # Navegação entre telas
│   │   │   ├── ui/              # Interface do usuário
│   │   │   └── MedeTorasApplication.kt
│   │   ├── res/                 # Recursos (strings, cores, etc.)
│   │   └── AndroidManifest.xml
│   └── build.gradle.kts
├── build.gradle.kts
├── settings.gradle.kts
└── README.md
```

## Instalação e Configuração

### 🚀 Opção 1: SEM Android Studio (Recomendado)

### 💻 **Método PC Simplificado (NOVO!)**
Guia super fácil: [BUILD_PC_SIMPLE.md](BUILD_PC_SIMPLE.md)
- 🎯 **Script automático:** `build-pc.bat` 
- ⚡ Só precisa de Java + Android SDK (500MB vs 3GB)
- 🔧 Configuração automática
- ⏱️ Build em ~5 minutos

**Uso rápido:**
```bash
# 1. Baixe Java JDK 17
# 2. Baixe Android Command Line Tools  
# 3. Execute:
build-pc.bat
```

**📋 Guia Rápido:** Veja <mcfile name="BUILD_SIMPLE.md" path="c:\Users\leand\OneDrive\Documentos\Trae\timber\MedeToras\BUILD_SIMPLE.md"></mcfile>

**Métodos disponíveis:**
- 🌐 **GitHub Actions** (100% online) - <mcfile name="BUILD_ONLINE.md" path="c:\Users\leand\OneDrive\Documentos\Trae\timber\MedeToras\BUILD_ONLINE.md"></mcfile>
- 📱 **Termux** (no Android) - <mcfile name="BUILD_TERMUX.md" path="c:\Users\leand\OneDrive\Documentos\Trae\timber\MedeToras\BUILD_TERMUX.md"></mcfile>

### 🛠️ Opção 2: Com Android Studio

#### Pré-requisitos
- Android Studio Arctic Fox ou superior
- SDK Android 24 (API level 24) ou superior
- Kotlin 1.9.0 ou superior

#### Passos para Instalação
1. **Clone ou baixe o projeto**
2. **Abra no Android Studio**
3. **Sincronize as dependências** (Gradle sync)
4. **Configure o SDK** se necessário
5. **Execute o projeto** em um dispositivo ou emulador

### Permissões Necessárias

O aplicativo solicita as seguintes permissões:

- `CAMERA`: Para captura de fotos
- `READ_EXTERNAL_STORAGE`: Para leitura de imagens
- `WRITE_EXTERNAL_STORAGE`: Para salvamento de imagens
- `READ_MEDIA_IMAGES`: Para acesso a imagens (Android 13+)
- `ACCESS_FINE_LOCATION` (opcional): Para geolocalização das fotos

## Como Usar

### Tela Principal (Home)
- Visualize estatísticas de imagens capturadas
- Acesse rapidamente a câmera ou galeria
- Veja informações sobre recursos principais

### Tela de Câmera
- **Captura Única**: Toque no botão de captura
- **Captura Múltipla**: Toque no botão "5x" para capturar 5 fotos em sequência
- **Captura Contínua**: Mantenha pressionado o botão contínuo
- **Controles**: Flash, zoom, navegação para galeria

### Galeria
- Visualize todas as imagens capturadas
- Toque em uma imagem para ver detalhes
- Opções de exclusão e compartilhamento
- Atualização automática da lista

## Arquitetura

### Padrões Utilizados

- **MVVM (Model-View-ViewModel)**: Separação clara de responsabilidades
- **Repository Pattern**: Abstração da camada de dados
- **Dependency Injection**: Gerenciamento de dependências com Hilt
- **Clean Architecture**: Organização em camadas bem definidas

### Componentes Principais

1. **CameraManager**: Gerencia operações da câmera
2. **ImageRepository**: Abstrai operações de dados
3. **Room Database**: Persistência local
4. **ViewModels**: Lógica de apresentação
5. **Compose UI**: Interface reativa

## Melhorias Implementadas

### Em relação ao Timbeter original:

1. **Remoção de Limitações**: Captura ilimitada de fotos
2. **Banco de Dados Robusto**: Armazenamento estruturado com Room
3. **Interface Moderna**: Jetpack Compose com Material Design 3
4. **Melhor Performance**: Otimizações de memória e processamento
5. **Experiência do Usuário**: Navegação intuitiva e controles aprimorados

## Configurações Avançadas

### Personalização de Cores
Edite `Color.kt` para personalizar a paleta de cores do aplicativo.

### Configuração de Banco de Dados
Modifique `MedeTorasDatabase.kt` para adicionar novas entidades ou alterar a estrutura.

### Ajustes de Câmera
Configure parâmetros em `CameraManager.kt` para otimizar qualidade e performance.

## Troubleshooting

### Problemas Comuns

1. **Erro de Permissão**: Verifique se as permissões foram concedidas
2. **Falha na Câmera**: Reinicie o aplicativo ou verifique se outro app está usando a câmera
3. **Problemas de Armazenamento**: Verifique espaço disponível no dispositivo

### Logs de Debug

Use `adb logcat` para visualizar logs detalhados:
```bash
adb logcat | grep MedeToras
```

## Contribuição

Para contribuir com o projeto:

1. Faça um fork do repositório
2. Crie uma branch para sua feature
3. Implemente as mudanças
4. Teste thoroughly
5. Submeta um pull request

## Licença

Este projeto é desenvolvido para fins educacionais e de demonstração.

## Contato

Para dúvidas ou sugestões sobre o projeto MedeToras, entre em contato através dos canais apropriados.

---

**MedeToras** - Captura ilimitada, armazenamento inteligente. 📸✨