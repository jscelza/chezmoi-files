#!/usr/bin/env zsh

echo -e "---- Start of ASDF setup ----"
SCRIPT_DIR=$(pwd)
ASDF_VERSION=v0.16.0
TARGET_FILE=~/bin/asdf.tar.gz

if [ -e "${HOME}/bin/asdf" ]; then
  echo "asdf already installed"
else
  echo "asdf not found. Obtaining from Github Releases..."
  wget -O ${TARGET_FILE} https://github.com/asdf-vm/asdf/releases/download/${ASDF_VERSION}/asdf-${ASDF_VERSION}-darwin-arm64.tar.gz
  tar -xvzf ${TARGET_FILE} -C ${HOME}/bin
  rm -f ${TARGET_FILE}
fi

while IFS= read -r line; do
  if [[ "$line" =~ ^# ]]; then
    continue
  fi

  plugin_name=$(echo "$line" | awk '{print $1}')
  asdf plugin add "$plugin_name"
done < ${SCRIPT_DIR}/.tool-versions


asdf install
echo -e "---- End of ASDF setup ----"

