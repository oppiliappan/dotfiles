# __ __
#  /(_ |_|
# /___)| |
#
echo "\e[3m$(fortune -sa)\n"

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

alias nerdz='~/scripts/nerdinfo.sh'
alias nvime='nvim ~/.config/nvim/init.vim'
alias spdtst='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias tg='chromium --app=https://web.telegram.org'

[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh

# functions

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

