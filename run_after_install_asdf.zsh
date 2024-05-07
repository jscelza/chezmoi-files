#!/usr/bin/env zsh

gecho -e "---- Start of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

if [ -e "${HOME}/.asdf/asdf.sh" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Installing..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
fi

export ASDF_DIR="$HOME/.asdf"
. "$HOME/.asdf/asdf.sh"
asdf update && asdf install


# Install plugins
# TODO: Determine why new plugins added to version-tools doesn't
# get install without manually doing it
#asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
#asdf plugin-add yarn
#asdf plugin-add pnpm
gecho -e "---- End of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

