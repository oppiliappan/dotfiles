# __ __
#  /(_ |_|
# /___)| |
#

export ZSH=/home/nerdypepper/.oh-my-zsh
export EDITOR=/usr/bin/nvim
export MANPAGER="nvim -c MANPAGER -"
export BROWSER="/usr/bin/chromium-browser"
export PATH=$PATH":$HOME/bin"
export PATH=$PATH":$HOME/.cargo/bin"

ZSH_THEME="simple"

DISABLE_LS_COLORS="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git sudo zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias cava='~/Desktop/cava/cava'
alias nerdz='~/scripts/nerdinfo.sh'
alias gtop='LANG=en_US.utf8 TERM=xterm-256color gtop'
alias vim='nvim'
alias nvime='nvim ~/.config/nvim/init.vim'

[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
