#!/bin/bash

gecho -e "---- Start of ${TXT_BOLD}1Password${TXT_CLEAR} setup ----"

export OP_SH="${OP_SH:=default}"
if [ -e "/usr/local/bin/op" ]; then
  if op account list | grep -q "${OP_SH}"; then

    echo "Account found. Signing into 1password with shortname  ${OP_SH}"
    eval "$(op signin)"
  else
    op account add --shorthand "${OP_SH}" --signin
  fi
else
  echo -e "OnePassword CLI not found."
fi

gecho -e "---- End of ${TXT_BOLD}1Password${TXT_CLEAR} setup ----"