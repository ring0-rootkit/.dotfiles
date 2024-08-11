# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ring0/.zshrc'

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-

setopt PROMPT_SUBST
PROMPT='%F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f%F{green}→%f '

export EDITOR="nvim"
export VISUAL="nvim"

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="$PATH:/opt/nvim-linux64/bin"
. "$HOME/.cargo/env"  

alias templg="cd templ && templ generate && cd .."
alias ta="tmux_sessions a"
alias tl="tmux_sessions l"
alias tk="tmux_sessions k"
alias dc=cd
alias ls='ls'
alias vim=nvim
# alias f='cd $(find . -type d -print | fzf)'
alias f='cd $(find ~/personal/ ~/work -mindepth 1 -maxdepth 1 | fzf --preview "ls -hgltpnG {} --color=always")'
alias scripts="cd /mnt/storage/scripts"
alias n='neofetch'
alias gitignore="echo '.*' > .gitignore"
alias gs="git status"
alias c=gcc -std=c99
alias darktheme='gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark \
&& gsettings set org.gnome.desktop.interface color-scheme prefer-dark'
alias lighttheme='gsettings set org.gnome.desktop.interface gtk-theme Adwaita \
&& gsettings set org.gnome.desktop.interface color-scheme prefer-light'
alias ts="ts-node"
alias t5="sowon 300"
alias t15="sowon 900"

if [ -z $TMUX ]; then; tmux_sessions a q1; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/.local/bin:$PATH

export PATH="/home/ring0/.local/share/solana/install/active_release/bin:$PATH"

# bun completions
[ -s "/home/ring0/.bun/_bun" ] && source "/home/ring0/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
