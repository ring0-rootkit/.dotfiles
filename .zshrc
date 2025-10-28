# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ring0/.zshrc'

autoload -Uz vcs_info
precmd() { vcs_info }

git_wt() { echo; cd $(git_worktree f | tail -n 1); zle accept-line; }
git_wt_new_branch() { echo; cd $(git_worktree b $1 | tail -n 1); }
create_wt() { echo; cd $(wt_create $1); }
zle -N git_wt
zle -N git_wt_new_branch

zstyle ':vcs_info:git:*' formats '%b '

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-

# GIT START
bindkey '^k' git_wt
alias wt="git worktree"
alias wtc=create_wt
alias wtb=git_wt_new_branch

alias gitignore="echo '.*' > .gitignore"
alias gs="git status"
# GIT END

setopt PROMPT_SUBST
PROMPT='%F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f%F{green}❯%f '

export EDITOR="nvim"
export VISUAL="nvim"

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/opt/nvim-linux64/bin"
. "$HOME/.cargo/env"  

alias templg="cd templ && templ generate && cd .."
alias ta="tmux_sessions a"
alias tl="tmux_sessions l"
alias tk="tmux_sessions k"
alias dc=cd
alias ls='ls'
alias f='cd $(find ~/personal/ ~/work/ -mindepth 1 -maxdepth 1 | fzf --preview "ls -hgltpnG {} --color=always")'
alias scripts="cd /mnt/storage/scripts"
alias n='neofetch'
alias c=gcc -std=c99
alias vim=nvim
alias ts="ts-node"
alias t5="sowon 300"
alias t15="sowon 900"

alias ls='ls --color'
alias l='ls -hgtpnG --color'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/ring0/.bun/_bun" ] && source "/home/ring0/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# CUSTOM PATH
export PATH="/home/r0/.avm/bin:$PATH"
export PATH="/opt:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH="/home/r0/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export CC=clang

source ~/.aliases
source ~/.local/share/omarchy/default/bash/envs

eval "$(mise activate)"

if [ -z $TMUX ]; then; tmux_sessions a q1; fi

