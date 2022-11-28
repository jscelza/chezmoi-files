#!/bin/sh

echo "---- Start of Spaceship setup ----"

mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"

echo "---- End of Spaceship setup ----"