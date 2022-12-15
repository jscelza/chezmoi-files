#!/bin/sh

echo "Adding bind key for fzf"
$(brew --prefix)/opt/fzf/install --key-bindings --completion  --no-bash --no-fish --update-rc
