red="\e[31m"
grn="\e[32m"
ylw="\e[33m"
cyn="\e[36m"
blu="\e[34m"
prp="\e[35m"
bprp="\e[35;1m"
rst="\e[0m"

export EDITOR=/usr/bin/vim
export MANPAGER="vim -c MANPAGER -"
export BROWSER="/usr/bin/chromium-browser"
export GPG_TTY=$(tty)
export TERM=xterm-256color-italic

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH":$HOME/scripts"
export PATH=$PATH":$HOME/.cargo/bin"
export PATH=$PATH":/usr/local/go/bin"
export PATH=$PATH":$HOME/anaconda3/bin"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# cool options for cool kids
shopt -s \
    autocd \
    globstar \
    checkwinsize \
    cdspell \
    dirspell \
    expand_aliases \
    dotglob \
    gnu_errfmt \
    histreedit \
    nocasematch 

bind 'set completion-ignore-case on'
bind "set show-all-if-ambiguous on"
bind 'set colored-stats on'
bind 'set completion-display-width 1'
bind 'TAB:menu-complete'

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

git_branch() {
    local git_status="$(git status 2> /dev/null)"
    local on_branch="On branch ([^${IFS}]*)"
    local on_commit="HEAD detached at ([^${IFS}]*)"

    if [[ $git_status =~ $on_branch ]]; then
        local branch=${BASH_REMATCH[1]}
        echo -ne "${grn}($branch)${rst}"
    elif [[ $git_status =~ $on_commit ]]; then
        local commit=${BASH_REMATCH[1]}
        echo -ne "${ylw}($commit)${rst}"
    fi
}

prompt_pwd() {
    dirs +0 | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}

rootornot() {
    if [[ "$(id -u)" -eq 0 ]]; then
        echo -ne "${red}# ${rst}"
    else
        echo -ne "${grn}$ ${rst}"
    fi
}

PS1='\n$(prompt_pwd) '
PS1+='$(git_branch) '
PS1+='\n$(rootornot)'

PS2="   > "

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
