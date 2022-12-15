# Chezmoi Files

## Control Structure
Below's diagram shows the structure of how resources are installed and configured. Three main tools are used to configure your system. [chezmoi](https://www.chezmoi.io/) installs [asdf](https://asdf-vm.com/) and[Homebew](https://brew.sh/). Asdf and brew then install binaries leveraging chezmoi to set configuration files.

```
├── chezmoi
    ├── asdf
    │   ├── K8s tools (kubectx, kubens)
    │   ├── Lanaguages (ruby, golang, python, node, etc)
    │   ├── Tools (okteto, teleport, terraform, terragrunt, vault)
    │   ├── Utilies (jq, awscli, istioctl)
    ├── brew
    │   ├── CLI Not support by asdf
    │   ├── Desktop Application (Code, Iterm2, etc)
    │   ├── Fronts (Fira, Nerd Font, etc)
    │   ├── GNU Tools
    │   ├── GPG Untils
    ├── Configuration files (i.e. dotfiles)
    │   ├── asdf (.tool_versions)
    │   ├── Git (.gitconfig, .gitignore)
    │   ├── OSx Default
    │   ├── Spaceship (.spaceshiprc.zsh) # moved to .config
    │   └── Zsh (.zprofile, .zshrc)
    └── Directories
       └── ~/code
```

## Getting started

### Single Command Boot strapping
Run the following to install of `chezmoi` and set everything up in a single command

> From a terminal
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://gitlab.com/jeffs-public/chezmoi-files
```

### From Scratch or Making changes

> From a terminal
1. Fun below commands
```bash
mkdir ~/bin && sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/bin
export PATH=~/bin:$PATH
chezmoi update
``
1. Update you respected .dotfiles and add files with `chezmoi add <file/dir name>`
1. Check out your diff `chezmoi diff`
1. Apply with `chezmoi apply`
1. Commit your changes to git and push to the respository

## Reference

* [ASDF Plugins](https://github.com/asdf-vm/asdf-plugins)
* [ASDF Reference](https://asdf-vm.com/manage/core.html)
* [Example alternative DotFile ](https://github.com/denysdovhan/dotfiles)
* [Brew Bundle Brewfile Tips](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)
* [Oh My Zsh](https://github.com/ohmyzsh)
* [Spaceship Prompt Configuration](https://spaceship-prompt.sh/config/intro/)

# Improvements/Fixes

[X] Fix terminal bindkey not working (^A, ^E, ^R)
[ ] Add ability to download SSH keys from One Password
[ ] Fix issie with ASDF installation via tool-verison file
[ ] Add Clean up to ASDF for version not in tools-version file.
[ ] Set up way to pull tokens from one password
[ ] okteto completion doesn't seem to work
[ ] add docker configuration login and configuration
