#!/usr/bin/env zsh

gecho -e  "--- Start of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
/opt/homebrew/opt/fzf/install --key-bindings --completion  --no-bash --no-fish --update-rc
gecho -e "---- End of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
