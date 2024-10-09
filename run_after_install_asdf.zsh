#!/usr/bin/env zsh

echo -e "---- Start of ASDF setup ----"

if [ -e "${HOME}/.asdf/asdf.sh" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Installing..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
fi

SCRIPT_DIR=$(pwd)

while IFS= read -r line; do
  if [[ "$line" =~ ^# ]]; then
    continue
  fi

  plugin_name=$(echo "$line" | awk '{print $1}')
  asdf plugin add "$plugin_name"
done < ${SCRIPT_DIR}/.tool-versions

export ASDF_DIR="$HOME/.asdf"
. "$HOME/.asdf/asdf.sh"
asdf update && asdf install

echo -e "---- End of ASDF setup ----"

