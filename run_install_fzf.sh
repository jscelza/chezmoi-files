#!/bin/sh

echo -e  "--- Start of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
$(brew --prefix)/opt/fzf/install --key-bindings --completion  --no-bash --no-fish --update-rc
echo -e "---- End of ${TXT_BOLD}FZF Bindings${TXT_CLEAR} setup ----"
