# Chezmoi Files

## References
- [asdf](https://asdf-vm.com/)
- [Homebew](https://brew.sh/)

## Getting started

### Single Command Boot strapping
Run the following to install `chezmoi` and set everything up in a single command
```bash
#Need to test this against custom repo

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### From Scratch
> From a terminal

1. Install from binary
```
mkdir ~/bin && sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/bin
export PATH=~/bin:$PATH
chezmoi update
``
