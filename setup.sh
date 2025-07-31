#!/bin/bash

pasta_alvo="$HOME/.config"
pastas_base="$HOME/configs-linux"
mapfile -t requerimentos < "$pastas_base/requirements.txt"

for requerimento in "${requerimentos[@]}"; do
	pasta_base="$pastas_base/$requerimento"
	echo "Gerando link de $pasta"
	if [ -d "$pasta_alvo/$requerimento" ]; then
		echo "Renomeando"
		timestamp=$(date +"%H%M%S")
		mv "$pasta_alvo/$requerimento" "$pasta_alvo/$requerimento_backup_$timestamp"  
	else
		echo "Não Existe"
	fi

	ln -s "$pastas_base/$requerimento" "$pasta_alvo/$requerimento"
done

echo "Gerando link de zshrc"
if [ -f "$HOME/.zshrc" ]; then
	echo "Renomeando"
	timestamp=$(date +"%H%M%S")
	mv "$HOME/.zshrc" "$HOME/.zshrc_backup_$timestamp"  
else
	echo "Não Existe"
fi

ln -s "$HOME/configs-linux/zsh/zshrc" "$HOME/.zshrc"
