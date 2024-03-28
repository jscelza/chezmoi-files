#!/bin/bash

gecho -e "---- Start of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

if [ -e "${HOME}/.asdf/asdf.sh" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Installing..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
fi

export ASDF_DIR="$HOME/.asdf"
ASDF_BIN=~/.asdf/bin

. "$HOME/.asdf/asdf.sh"

echo "Run 'asdf update && asdf install' afer this run due to a bug in chezmio not sourcing asdf proprely"

gecho -e "---- End of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

# List of plugins cat be found @ https://github.com/asdf-vm/asdf-plugins#plugin-list
# for PLUGIN in $(awk '{print $1}' < $HOME/.local/share/chezmoi/dot_tool-versions); do
#   ${ASDF_BIN}/asdf plugin-add "${PLUGIN}"
#   # Will install version in the ~/.tools-versions
#   ${ASDF_BIN}/asdf install "${PLUGIN}"
# done

