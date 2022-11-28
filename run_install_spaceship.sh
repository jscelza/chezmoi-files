#!/bin/sh

gecho -e  "${TXT_BOLD}--- Start of Spaceship setup ----${TXT_CLEAR}"

if [ ! -d "$HOME/.zsh/spaceship" ]; then
    mkdir -p "$HOME/.zsh"
    git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
fi 

gecho -e "${TXT_BOLD}---- End of Spaceship setup ----${TXT_CLEAR}"