#!/usr/bin/env bash

gecho -e "---- Start of ${TXT_BOLD}CDKTF${TXT_CLEAR} setup ----"

if command -v cdktf &> /dev/null; then
  echo "CDKTF already installed."
else
  echo "Installing CDKTF."
  npm install --global cdktf-cli@latest
fi

echo "CDKTF version:"
cdktf --version 2> /dev/null

echo "Run `cdktf init --template=typescript --local` to create a new project."

gecho -e "---- End of ${TXT_BOLD}1Password${TXT_CLEAR} setup ----"
