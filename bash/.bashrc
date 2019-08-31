red="\e[31m"
grn="\e[32m"
ylw="\e[33m"
cyn="\e[36m"
blu="\e[34m"
prp="\e[35m"
bprp="\e[35;1m"
rst="\e[0m"
blk="\e[30m"

bgrn="\e[42m"
bylw="\e[43m"

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
export PATH=$PATH":$HOME/protoc/bin"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

case $- in
    *i*) ;;
      *) return;;
esac

# better history syncing
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

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
bind Space:magic-space

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


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

PROMPT_COMMAND=''
# PS1='\n$(pista)'
PS1='\n$(pista)'
PS2="    >"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VIRTUAL_ENV_DISABLE_PROMPT=1

export PROMPT_CHAR=">"
export PROMPT_CHAR_COLOR="magenta"
export PROMPT_CHAR_ROOT="#"
export PROMPT_CHAR_ROOT_COLOR="yellow"

export SHORTEN_CWD=1
export CWD_COLOR="cyan"
export EXPAND_TILDE=0

export GIT_CLEAN="·"
export GIT_CLEAN_COLOR="green"

export GIT_WT_MODIFIED="×"
export GIT_WT_MODIFIED_COLOR="red"

export GIT_INDEX_MODIFIED="±"
export GIT_INDEX_MODIFIED_COLOR="yellow"

export BRANCH_COLOR="bright black"
export COMMIT_COLOR="bright black"
