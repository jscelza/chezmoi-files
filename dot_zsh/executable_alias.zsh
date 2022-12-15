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


# K8s
alias kx='kubectx'
alias kn='kubens'

alias k='kubectl'
alias sk='kubectl -n kube-system'
alias ke='EDITOR=vim kubectl edit'
alias klbaddr="kubectl get svc -ojsonpath='{.status.loadBalancer.ingress[0].hostname}'"

alias kdebug='kubectl run -i -t debug --rm --image=caarlos0/debug --restart=Never'
alias knrunning='kubectl get pods --field-selector=status.phase!=Running'
alias kfails='kubectl get po -owide --all-namespaces | grep "0/" | tee /dev/tty | wc -l'
alias kimg="kubectl get deployment --output=jsonpath='{.spec.template.spec.containers[*].image}'"
alias kvs="kubectl view-secret"

kenc() {
        # shellcheck disable=SC2039
        echo -n "$@" | base64
}

kdec() {
        echo "$@" | base64 -D
}

# Misc
alias vi=nvim
