export PATH=$PATH":$HOME/scripts"

export TERM=xterm-256color-italic
export EDITOR="/run/current-system/sw/bin/nvim"
export MANPAGER="less"
export BROWSER="/run/current-system/sw/bin/nvim"
export GPG_TTY=$(tty)
export TZ='Asia/Kolkata'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --color=bw'

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
export PROMPT_COMMAND=''
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
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'
bind 'set completion-display-width 1'
bind 'TAB:menu-complete'
bind Space:magic-space

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -f $HOME/.github ] && . $HOME/.github
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_prompt ] && . ~/.bash_prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(stack --bash-completion-script stack)"

# pfetch
export PF_INFO="ascii title os kernel uptime pkgs shell "
export PF_SEP=" "
export PF_COL1=7
export PF_COL2=7
export PF_COL3=6
export PF_ALIGN="9"
export PF_ASCII="nixos"

export _JAVA_AWT_WM_NONREPARENTING=1


# Pista stuff
# prompt string to display, for regular users
export PROMPT_CHAR="λ"
export PROMPT_CHAR_COLOR="cyan"

# prompt string to display, for the root user
export PROMPT_CHAR_ROOT="#"
export PROMPT_CHAR_ROOT_COLOR="magenta"

# if SHORTEN_CWD is set to 1, `/home/nerdypepper/code` is shortened to
# `/h/n/code`
export SHORTEN_CWD=1
export CWD_COLOR="white"

# if EXPAND_TILDE is set to 0, `/home/nerdypepper` is shortened to `~`
export EXPAND_TILDE=0

# there are three possible states for a git repo
# - unstaged (working tree has been modified) 
# - staged (staging area has been modified)
# - clean (all staged changes have committed)

# symbol to represent clean repo state
export GIT_CLEAN="·"
export GIT_CLEAN_COLOR="green"

# symbol to represent unstaged repo state
export GIT_WT_MODIFIED="×"
export GIT_WT_MODIFIED_COLOR="red"

# symbol to represent staged repo state
export GIT_INDEX_MODIFIED="±"
export GIT_INDEX_MODIFIED_COLOR="yellow"

# if HEAD ref peels to branch
export BRANCH_COLOR="bright black"

# if HEAD ref peels to a commit (detached state)
export COMMIT_COLOR="green"

