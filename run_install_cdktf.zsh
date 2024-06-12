#!/usr/bin/env bash

echo -e "---- Start of CDKTF setup ----"

if command -v cdktf &> /dev/null; then
  echo "CDKTF already installed."
else
  echo "Installing CDKTF."
  npm install --global cdktf-cli@latest
fi

echo "CDKTF version:"
cdktf --version 2> /dev/null

echo "Run `cdktf init --template=typescript --local` to create a new project."

echo -e "---- End of 1Password setup ----"
