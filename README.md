# Mint Dev Setup 🚀

Um script simples e automatizado para instalar aplicativos essenciais no **Linux Mint**, focado em desenvolvimento e produtividade.

> 🛠️ Configure rapidamente seu ambiente com linguagens de programação, IDEs, ferramentas de desenvolvimento e aplicativos multimídia — tudo na última versão via **Flatpak** e **APT**.

---

## 📦 Aplicativos instalados

- **Linguagens e ferramentas de desenvolvimento:**
  - Python + Pip
  - OpenJDK (Java)
  - Git
  - CMatrix (diversão no terminal)
  - Btop (monitor de sistema moderno)

- **IDEs e ferramentas de código:**
  - Visual Studio Code
  - IntelliJ IDEA (Community Edition)

- **Comunicação e produtividade:**
  - Discord

- **Criação e multimídia:**
  - Blender
  - OBS Studio
  - VLC

---

## 🔧 Funcionalidades

- Atualiza o sistema automaticamente (`sudo apt update && upgrade`)
- Verifica se cada programa já está instalado antes de instalar
- Instala os aplicativos usando os repositórios **APT** e **Flatpak**
- Configuração rápida e simples, especialmente útil após uma instalação limpa do sistema

---

## 🚀 Como usar

### ✅ Pré-requisitos

- Sistema operacional: **Linux Mint** (ou qualquer distro baseada em Ubuntu com suporte a APT e Flatpak)
- Acesso ao terminal com permissões de `sudo`

### 📝 Passo a passo

1. **Clone o repositório:**

```bash
git clone https://github.com/seu-usuario/mint-dev-setup.git
```

2. **Acesse a pasta do projeto:**

```bash
cd mint-dev-setup
```

3. **Dê permissão de execução para o script:**

```bash
chmod +x dev-setup.sh
```

4. **Execute o script:**
```bash
./dev-setup.sh
```

### Comandos rápidos (sem git)

Se preferir sem usar git, execute diretamente:

```bash
wget https://raw.githubusercontent.com/seu-usuario/mint-dev-setup/main/instalador.sh
chmod +x dev-setup.sh
./dev-setup.sh
```

## 🚦 Observações importantes

- O script verifica se os aplicativos já estão instalados, evitando reinstalações desnecessárias.
- Pode ser necessário digitar sua senha de sudo durante o processo.
- Todo o processo é feito diretamente no terminal.

## 📝 Licença

Este projeto está licenciado sob a licença MIT.

## 🤝 Contribuições

Sinta-se à vontade para abrir issues ou enviar pull requests com sugestões, melhorias ou novos recursos!
