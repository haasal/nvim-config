# Neovim Config

## Installation (Arch)

Install a Packer (Package Manager) and patched font

```bash
yay -S nvim-packer-git ttf-firacode-nerd
git clone https://github.com/haasal/nvim-config ~/.config/nvim
```

Inside nvim press *s* (`:PackerSync`) to sync packages.
This step might have to be repeated.

## Setup for a new language/framework

Use `:MasonInstall` to install a language server, linter, formatter and other
utilities you need.
Use `:TSInstall` to install the Treesitter package for your language.
