#!/usr/bin/env bash

echo -e "---- Start of 1Password setup ----"

export OP_SH="${OP_SH:=default}"
OP_BIN=$(which op)
if [ -e "${OP_BIN}" ]; then
  if op account list | grep "${OP_SH}"; then

    echo "Account found. Signing into 1password with shortname  ${OP_SH}"
  else
    op account add --shorthand "${OP_SH}" --signin
  fi
else
  echo -e "OnePassword CLI not found."
fi

echo -e "---- End of 1Password setup ----"
