# __ __
#  /(_ |_|
# /___)| |
#

export ZSH=/home/icyphox/.oh-my-zsh
export EDITOR=/usr/bin/nvim
export MANPAGER="nvim -c MANPAGER -"
export BROWSER="/usr/bin/chromium-browser"
export PATH=$PATH":$HOME/bin"
export PATH=$PATH":$HOME/vite/"

ZSH_THEME="simple"

DISABLE_LS_COLORS="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

alias cava='~/Desktop/cava/cava'
alias nerdz='~/scripts/nerdinfo.sh'
alias gtop='LANG=en_US.utf8 TERM=xterm-256color gtop'
alias vim='nvim'
alias nvime='nvim ~/.config/nvim/init.vim'

[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh

PATH="/home/icyphox/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/icyphox/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/icyphox/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/icyphox/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/icyphox/perl5"; export PERL_MM_OPT;

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
