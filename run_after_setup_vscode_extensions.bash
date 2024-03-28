#!/bin/bash

set -x on
modules="
4ops.terraform
amazonwebservices.aws-toolkit-vscode
ban.spellright
batisteo.vscode-django
codezombiech.gitignore
connorshea.vscode-ruby-test-adapter
datadog.datadog-vscode
donjayamanne.python-environment-manager
donjayamanne.python-extension-pack
editorconfig.editorconfig
golang.go
hbenl.vscode-test-explorer
iciclesoft.workspacesort
magicstack.MagicPython
mikestead.dotenv
misogi.ruby-rubocop
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.autopep8
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
noku.rails-run-spec-vscode
patbenatar.advanced-new-file
pnp.polacode
redhat.vscode-yaml
shardulm94.trailing-spaces
sporto.rails-go-to-spec
timonwong.shellcheck
visualstudioexptteam.intellicode-api-usage-examples
visualstudioexptteam.vscodeintellicode
wmaurer.change-case
zxh404.vscode-proto3
"

gecho -e "---- Start of ${TXT_BOLD}VSCode Extensions${TXT_CLEAR} setup ----"

if command -v code >/dev/null; then
  echo "VSCode found"
  for module in $modules; do
      code --force --install-extension "$module" || true
  done
fi

gecho -e "---- Stop of ${TXT_BOLD}VSCode Eztensions${TXT_CLEAR} setup ----"

# Currently Not Installed
# wingrunr21.vscode-ruby
# redhat.vscode-commons
# njpwerner.autodocstring
# rebornix.ruby
# ms-vscode.test-adapter-converter
# ms-vscode.makefile-tools
# liviuschera.noctis
# annsk.alignment
# castwide.solargraph
# eamodio.gitlens
# GitLab.gitlab-workflow
# gitpod.gitpod-desktop
# KevinRose.vsc-python-indent
# monokai.theme-monokai-pro-vscode
# ms-azuretools.vscode-docker
# ms-toolsai.jupyter
# ms-toolsai.jupyter-keymap
# ms-toolsai.jupyter-renderers
# ms-vscode-remote.remote-containers
# ms-vscode-remote.remote-ssh
# ms-vscode-remote.remote-ssh-edit
# ms-vscode.live-server
# ms-vsliveshare.vsliveshare
# ms-vsliveshare.vsliveshare-audio
# tfsec.tfsec
# wholroyd.jinja
