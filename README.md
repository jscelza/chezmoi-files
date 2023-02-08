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

### Setting up 1Password
In order to set up 1password, the CLI is used to add the account and log you in. In order to do this you will need your `Email`, `Secret`, `password` and an authorization code if you use 2FA.

During setup you will see the following if no account has been setup.
- Example:
```bash
Enter your sign-in address (example.1password.com): subdomain.1password.com
Enter the email address for your account on subdomain.1password.com: XXXXXXZ@domain.com
Enter the Secret Key for XXXXXXZ@domain.com on subdomain.1password.com:
Enter the password for XXXXXXZ@domain.com at subdomain.1password.com:
Enter your six-digit authentication code: NNNNNN
Now run 'eval $(op signin)' to sign in.
# Eval auto runs
Enter the password for XXXXXXZ@domain.com at subdomain.1password.com:
```
> You can `export OP_SH=1passwordShortname` to log in an account beside default.

The following references in 1Password need to be set in your Personal vault

| Type | Name |
| ---- | ----------- |
| Document | "docker.config.json" |
| Document | "okteto.context" |
| SSH Key | "personal1.git.id_rsa" |
| SSH key | "work1.git.id_rsa/" |


## From Scratch or Making changes

> From a terminal
1. Fun below commands
```bash
mkdir ~/bin && sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/bin
export PATH=~/bin:$PATH
chezmoi update
```
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

## Implemented

* 2022-12-22
  - [X] Merge more k8s alias
  - [X] brew check doesnt work on newly setup system
* 2022-12-07
  - [X] Fix terminal bindkey not working (^A, ^E, ^R)
  - [X] Fix issue with ASDF installation via tool-version file
* 20220-02-07
  - [X] Fix issue with gecho being used and not being installed in pre-brew install
  - [ ] Set up way to pull tokens/private configuration from OnePassword
    - [X] SSH keys from One Password
  - [X] Change .ssh/config to be partial managed since okteto adds endpoints
  - [X] Okteto file pulled from 1password
  - [X] Docker configuration & tuning


## Still needing fixes

- [ ] Add Clean up to ASDF for version not in tools-version file.
- [ ] Set up way to pull tokens/private configuration from OnePassword
    - [ ] GITLAB_ACCESS_TOKEN / GITLAB_TOKEN
    - [ ] SRC_ACCESS_TOKEN for src-cli
    - [ ] BUNDLE_GEM__FURY__IO for Gem Fury
    - [ ] Docker login for private Images
- [ ] Okteto completion doesn't seem to work
- [ ] Kubectl tab completion broken
- [ ] Handle `xcode-select --install`
