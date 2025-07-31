#!/bin/bash

if command -v rofi &> /dev/null; then
	echo "Instale ROFI"
fi

git clone --depth=1 https://github.com/adi1090x/rofi.git

cd rofi
chmod +x setup.sh
./setup.sh
