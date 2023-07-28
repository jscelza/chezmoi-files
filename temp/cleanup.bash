#!/bin/bash

sudo  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
rm -rf .asdfrc .default-python-packages .docker .local bin .config .asdfrc \
    .default-python-packages .docker .local .viminfo gitconfig fzf.zsh .gitignore \ 
    .gnupg .gnupg_pre_2.1 .krew .okteto .spaceshiprc.zsh .ssh .tool-versions .zsh .asdf .fzf.zsh .gitconfig .zshrc