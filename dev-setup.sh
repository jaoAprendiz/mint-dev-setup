#!/bin/bash

# Função para verificar se um comando já está instalado
function is_installed {
    command -v "$1" &> /dev/null
}

# Atualiza o sistema
echo "🔄 Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

# Instala o Flatpak se não estiver instalado
if ! is_installed flatpak; then
    echo "📦 Instalando Flatpak..."
    sudo apt install -y flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
else
    echo "✅ Flatpak já está instalado."
fi

echo "🚀 Iniciando a instalação dos aplicativos essenciais..."

# Instala Git
if ! is_installed git; then
    echo "📥 Instalando Git..."
    sudo apt install -y git
else
    echo "✅ Git já está instalado."
fi

# Instala OpenJDK (Java)
if ! is_installed java; then
    echo "📥 Instalando OpenJDK..."
    sudo apt install -y openjdk-17-jdk
else
    echo "✅ OpenJDK já está instalado."
fi

# Instala Python
if ! is_installed python3; then
    echo "📥 Instalando Python..."
    sudo apt install -y python3 python3-pip
else
    echo "✅ Python já está instalado."
fi

# Instala CMatrix
if ! is_installed cmatrix; then
    echo "📥 Instalando CMatrix..."
    sudo apt install -y cmatrix
else
    echo "✅ CMatrix já está instalado."
fi

# Instala Btop
if ! is_installed btop; then
    echo "📥 Instalando Btop..."
    sudo apt install -y btop
else
    echo "✅ Btop já está instalado."
fi

# VS Code
if ! flatpak list | grep -q "com.visualstudio.code"; then
    echo "📥 Instalando VS Code..."
    flatpak install -y flathub com.visualstudio.code
else
    echo "✅ VS Code já está instalado."
fi

# IntelliJ IDEA Community
if ! flatpak list | grep -q "com.jetbrains.IntelliJ-IDEA-Community"; then
    echo "📥 Instalando IntelliJ IDEA Community..."
    flatpak install -y flathub com.jetbrains.IntelliJ-IDEA-Community
else
    echo "✅ IntelliJ IDEA já está instalado."
fi

# Discord
if ! flatpak list | grep -q "com.discordapp.Discord"; then
    echo "📥 Instalando Discord..."
    flatpak install -y flathub com.discordapp.Discord
else
    echo "✅ Discord já está instalado."
fi

# Blender
if ! flatpak list | grep -q "org.blender.Blender"; then
    echo "📥 Instalando Blender..."
    flatpak install -y flathub org.blender.Blender
else
    echo "✅ Blender já está instalado."
fi

# OBS Studio
if ! flatpak list | grep -q "com.obsproject.Studio"; then
    echo "📥 Instalando OBS Studio..."
    flatpak install -y flathub com.obsproject.Studio
else
    echo "✅ OBS Studio já está instalado."
fi

# VLC
if ! flatpak list | grep -q "org.videolan.VLC"; then
    echo "📥 Instalando VLC..."
    flatpak install -y flathub org.videolan.VLC
else
    echo "✅ VLC já está instalado."
fi

echo "🎉 ✔️ Instalação concluída com sucesso!"
