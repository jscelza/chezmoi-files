#!/usr/bin/env zsh

gecho -e  "--- Start of ${TXT_BOLD}Spaceship${TXT_CLEAR} setup ----"

if [ ! -d "$HOME/.zsh/spaceship" ]; then
    mkdir -p "$HOME/.zsh"
    git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
fi

gecho -e "---- End of ${TXT_BOLD}Spaceship${TXT_CLEAR} setup ----"
