#!/bin/bash

# download neovim and uncompress it to /opt/
echo "*** Downloading and installing neovim"
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xzf nvim-linux-x86_64.tar.gz
sudo mv ./nvim-linux-x86_64 /opt
sudo ln -s /opt/nvim-linux-x86_64/bin/nvim /usr/bin/nvim
rm nvim-linux-x86_64.tar.gz

echo "*** Installing nvchad pre reqs"
sudo apt update
sudo apt install ripgrep unzip build-essential

echo "*** Install LSP pre reqs"
sudo apt install nodejs npm

echo "*** Install config"
cp -r ./nvim ~/.config/

echo "*** Post install instructions"
echo " * Install nerd font like JetBrains in your terminal, and assign it as the default font"
echo " * run nvim, and run :MasonInstallAll, install ruff, black, pyright"
