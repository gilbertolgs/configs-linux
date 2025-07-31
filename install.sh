#!/bin/bash

packer="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
ohmyzsh="$HOME/.oh-my-zsh"

if [ ! -d "$packer" ]; then
	echo "Instalando Packer"
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
	echo "Packer já instalado"
fi

if [ ! -d "$ohmyzsh" ]; then
	echo "Instalando Oh My Zsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	chmod +x "$HOME/configs-linux/zsh/install.sh"
	"$HOME/configs-linux/zsh/install.sh"
else
	echo "Oh My Zsh já instalado"
fi
