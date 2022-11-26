# Chezmoi Files

## References
- [asdf](https://asdf-vm.com/)
- [Homebew](https://brew.sh/)

## Getting started

> From a terminal

1. Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. Post HomeBrew commands
    ```bash
    - Run these three commands in your terminal to add Homebrew to your PATH:
        echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/jeff.scelza/.zprofile
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jeff.scelza/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    - Run brew help to get started
    - Further documentation:
        https://docs.brew.sh
    ```
1. Next, install [asdf](https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies) via `brew`
    ```bash
    brew install asdf
    Running `brew update --auto-update`...
    ==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
    https://github.com/Homebrew/brew#donations

    ... removed output ...

    zsh completions have been installed to:
    /opt/homebrew/share/zsh/site-functions
    ==> Summary
    🍺  /opt/homebrew/Cellar/asdf/0.10.2: 164 files, 716.2KB
    ==> Running `brew cleanup asdf`...
    Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
    Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
    ==> Caveats
    ==> asdf
    To use asdf, add the following line to your ~/.zshrc:
    . /opt/homebrew/opt/asdf/libexec/asdf.sh

    Restart your terminal for the settings to take effect.

    zsh completions have been installed to:
    /opt/homebrew/share/zsh/site-functions

    ```
1. Source the adsf configuration by running `echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc`
1. Install [Chezmoi](https://www.chezmoi.io/install/)
    ```bash
    asdf plugin add chezmoi && asdf install chezmoi 2.27.2

    initializing plugin repository...Cloning into '/Users/jeff.scelza/.asdf/repository'...
    remote: Enumerating objects: 4512, done.
    remote: Counting objects: 100% (339/339), done.
    remote: Compressing objects: 100% (157/157), done.
    remote: Total 4512 (delta 210), reused 305 (delta 180), pack-reused 4173
    Receiving objects: 100% (4512/4512), 1018.83 KiB | 3.92 MiB/s, done.
    Resolving deltas: 100% (2391/2391), done.
    * Downloading chezmoi release 2.27.2...
    chezmoi 2.27.2 installation was successful!
    ```
1. Set `chezmoi`'s version `asdf global chezmoi latest`
