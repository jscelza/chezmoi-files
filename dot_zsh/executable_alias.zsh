#!/bin/zsh

## Alias
# git
if command -v hub >/dev/null 2>&1; then
  alias git='hub'
fi
alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gcb='git-copy-branch-name'
alias gpr='gp && open-pr'
alias reload!='exec "$SHELL" -l'
if command -v nvim >/dev/null 2>&2; then
        alias vim='nvim'
fi

# Misc
alias vi=nvim

# short cut command to install new plugins
# asdf_install ()
# {
#     plugin="${1?Usage: ${FUNCNAME[0]} <plugin> [version] [scope]}";
#     version="${2:-latest}";
#     scope="${3:-global}";
#     asdf plugin add "${plugin}";
#     asdf install "${plugin}" "${version}";
#     asdf "${scope}" "${plugin}" "${version}"
# }
