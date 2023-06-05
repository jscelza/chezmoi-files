#!/bin/bash

gecho -e "---- Start of ${TXT_BOLD}VSCode Extensions${TXT_CLEAR} setup ----"

if command -v code >/dev/null; then

    modules="
    4ops.terraform
amazonwebservices.aws-toolkit-vscode
annsk.alignment
ban.spellright
castwide.solargraph
codezombiech.gitignore
connorshea.vscode-ruby-test-adapter
coolbear.systemd-unit-file
donjayamanne.python-environment-manager
donjayamanne.python-extension-pack
eamodio.gitlens
EditorConfig.EditorConfig
GitLab.gitlab-workflow
gitpod.gitpod-desktop
golang.go
hbenl.vscode-test-explorer
heptio.jsonnet
HookyQR.beautify
iciclesoft.workspacesort
KevinRose.vsc-python-indent
magicstack.MagicPython
mikestead.dotenv
misogi.ruby-rubocop
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.python
ms-python.vscode-pylance
ms-vscode.makefile-tools
ms-vscode.test-adapter-converter
njpwerner.autodocstring
noku.rails-run-spec-vscode
patbenatar.advanced-new-file
pnp.polacode
rebornix.ruby
redhat.vscode-commons
redhat.vscode-yaml
shardulm94.trailing-spaces
sporto.rails-go-to-spec
timonwong.shellcheck
VisualStudioExptTeam.vscodeintellicode
wingrunr21.vscode-ruby
wmaurer.change-case
zxh404.vscode-proto3
"
    for module in $modules; do
        code --force --install-extension "$module" || true
    done
fi

gecho -e "---- Stop of ${TXT_BOLD}VSCode Eztensions${TXT_CLEAR} setup ----"

# Currently Not Installed
# liviuschera.noctis
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
