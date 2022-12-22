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

