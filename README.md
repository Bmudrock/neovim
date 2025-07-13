# Neovim Config

## Install Instructions

### Install pre-requisites

```bash
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
```

### Install the Config

Clone the repo to the `./config/nvim` folder

```bash
git clone https://github.com/Bmudrock/neovim ~/.config/nvim

```

## Post Install Instructions

* Install a Nerd-Font (ie JetBrains) as your terminal font.
* run `nvim` and allow it to install the plugins
* while in `nvim` run: `:MasonInstallAll`, find and install (press 'i' on the line): ruff, black, pyright
* Install TreeSitter profiles, run: `:TSInstall python`
