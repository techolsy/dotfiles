ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -U compinit && compinit

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.yml)"

# Binds
bindkey -e

# History
HISTSIZE=50000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*:*:(ssh|scp|rsync|ping|host):*:*' known-hosts-files ~/.ssh/known_hosts ~/.ssh/generated_hosts

# Aliases
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias vi='nvim'
alias vim='nvim'
alias mc='mcli'

# Shell integration
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

export PATH=$HOME/.local/bin:$PATH
