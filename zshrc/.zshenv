# Global envs

# GO env
export GOROOT=~/sdks/goroot
export GOPATH=~/gopath
export GOBIN=$GOROOT/bin

# Global .env for CODA config
export PATH_TO_DEVOPS_TOOLS='/Users/gabrielmocanu/Projects/coda/devops-tools'
export PATH_TO_CODA_REPOS='/Users/gabrielmocanu/Projects/pdq'
export GPG_TTY=$(tty)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set HISTFILE
export HISTFILE=~/.dotfiles/zshrc/.zsh_history

export XDG_CONFIG_HOME="/Users/gabrielmocanu/.config"
export ZDOTDIR="/Users/gabrielmocanu/.config/zshrc"

# Global aliases
alias vim="nvim"
alias oldvim="\vim"
alias c="pbcopy"
alias la=tree
alias cat=bat

# Git log find by commit message
function glf() { git log --all --grep="$1"; }

# Git
alias gc="git commit -s"
alias gca="git commit -a"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"
