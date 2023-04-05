#!/bin/bash

echo -e "---- Start of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"

if [ -e "$(which asdf)" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Installing..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.1
fi

# List of plugins cat be found @ https://github.com/asdf-vm/asdf-plugins#plugin-list
# TODO: Switch to use tool-version file
ASDF_PLUGINS=("awscli" "docker-slim" "golang" "helm" "istioctl" "jq" "kubectl" "kubectx" "okteto" "neovim" "python" "ruby" "teleport-ent" "terraform" "terraform-ls" "terragrunt" "vault")

for PLUGIN in "${ASDF_PLUGINS[@]}"; do
  asdf plugin-add "${PLUGIN}"
  # Will install version in the ~/.tools-versions
  asdf install "${PLUGIN}"
done

echo -e "---- End of ${TXT_BOLD}ASDF${TXT_CLEAR} setup ----"
