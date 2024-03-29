#!/usr/bin/env zsh

gecho -e  "--- Start of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
${HOMEBREW_PREFIX}/opt/fzf/install --key-bindings --completion  --no-bash --no-fish --update-rc
gecho -e "---- End of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
