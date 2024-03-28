#!/bin/bash

gecho -e "---- Start of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

if [ -e "${HOME}/.asdf/asdf.sh" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Installing..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
fi

export ASDF_DIR="$HOME/.asdf"
. "$HOME/.asdf/asdf.sh"

echo "Run `asdf update && asdf install` afer this run due to a bug in chezmio not sourcing asdf proprely"
# asdf update
# # Leveraging the configuration in file ~/.tool-versions
# asdf install

gecho -e "---- End of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"
