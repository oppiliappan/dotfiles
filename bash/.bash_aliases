
alias ...='cd -- ../..'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -F --color=always'
alias nerdz='~/scripts/nerdinfo.sh'
alias o='xdg-open'
alias rless='less -r'
alias spdtst='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias tmux='tmux -u'
alias tree='tree -C'
alias vim='nvim'
alias vime='nvim ~/.config/nvim/init.vim'
alias tb='nc termbin.com 9999'

# git aliases
alias gb='git branch -v'
alias gc='git commit --verbose'
alias gd='git diff --minimal'
alias ggp='git push'
alias gl='git log -p --abbrev-commit --pretty=medium'
alias glo='git log --pretty=oneline --abbrev-commit'
alias gst='git status --short'

# xbps
alias +='sudo xbps-install'
alias ?='xbps-query -Rs'
alias ~='sudo xbps-remove'

