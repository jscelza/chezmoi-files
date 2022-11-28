# Chezmoi Files

## Control Structure
Below's diagram shows the structure of how resources are installed and configured. Three main tools are used to configure your system. [chezmoi](https://www.chezmoi.io/) installs [asdf](https://asdf-vm.com/) and[Homebew](https://brew.sh/). Asdf and brew then install binaries leveraging chezmoi to set configuration files.

```
├── chezmoi
    ├── asdf
    │   ├── K8s tools (kubectx, kubens)
    │   ├── Lanaguages (ruby, golang, python, node, etc)
    │   ├── Tools (okteto, teleport, terraform, terragrunt)    
    │   ├── Utilies (jq, awscli, istioctl)
    ├── brew
    │   ├── CLI Not support by asdf
    │   ├── Desktop Application (Code, Iterm2, etc)
    │   ├── Fronts (Fira, Nerd Font, etc)
    │   ├── GNU Tools
    │   ├── GPG Untils
    ├── dotfiles
    │   ├── asdf (.tool_versions)
    │   ├── Git (.gitconfig, .gitignore)
    │   ├── Spaceship (.spaceshiprc.zsh) # moved to .config
    │   └── Zsh (.zprofile, .zshrc)
    └──
```

## Getting started

### Single Command Boot strapping
Run the following to install `chezmoi` and set everything up in a single command
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://gitlab.com/jeffs-public/chezmoi-files
```

### From Scratch
> From a terminal

1. Install from binary
```
mkdir ~/bin && sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/bin
export PATH=~/bin:$PATH
chezmoi update
``
