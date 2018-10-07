export ZSH=/home/nerdypepper/.oh-my-zsh
export EDITOR=/usr/bin/nvim
export MANPAGER="nvim -c MANPAGER -"
export BROWSER="/usr/bin/chromium-browser"
export PATH=$PATH":$HOME/scripts"
export PATH=$PATH":$HOME/.cargo/bin"
export PATH=$PATH":$HOME/anaconda3/bin"
export GPG_TTY=$(tty)
export TERM=xterm-256color-italic

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
alias tmux='tmux -u'
alias chromium-browser='chromium-browser --force-device-scale-factor=1.2'

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh


# functions

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/autojump/autojump.zsh

_prompt_pwd () {
  echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}
