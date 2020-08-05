export PATH=$PATH":$HOME/.cargo/bin"
export PATH=$PATH":$HOME/.poetry/bin"
export PATH=$PATH":$HOME/scripts"
export PATH=$PATH":$HOME/bin"
export PATH=$PATH":$HOME/.cabal/bin"
export PATH=$PATH":$HOME/leet/flutter/bin"
export PATH=$PATH":$HOME/.local/bin"
export PATH=$PATH":/usr/lib/jvm/jdk-14/bin"
export PATH=$PATH":/usr/local/texlive/2020/bin/x86_64-linux/"
export PATH=$PATH":/usr/local/go/bin"

export AIRFLOW_HOME="$HOME/.config/airflow"
export ANDROID_HOME="$HOME/leet/ndk/android-ndk-r21c/toolchains"
export EDITOR=/bin/nvim
export MANPAGER="less"
export BROWSER="/bin/firefox"
export GPG_TTY=$(tty)
export TERM=xterm-256color-italic
export TZ='Asia/Kolkata'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --color=bw'

export GUILE_LOAD_PATH="/usr/local/share/guile/3.0:/usr/local/share/guile"

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
bind "t: $HOME/scripts/tmux-fzf.sh"
bind Space:magic-space

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# local bash completions
for cf in "$HOME"/.bash_completion.d/* ; do
  . $cf
done

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_prompt ] && . ~/.bash_prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(stack --bash-completion-script stack)"

# pfetch
export PF_INFO="ascii title os kernel uptime pkgs shell "
export PF_SEP=" "
export PF_COL1=7
export PF_COL2=7
export PF_COL3=6
export PF_ALIGN="9"
export PF_ASCII="void"

export _JAVA_AWT_WM_NONREPARENTING=1

# [[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
# [[ -f ~/.bash_zoxide.sh ]] && source ~/.bash_zoxide.sh
# 
# export PATH_TO_FX="$HOME/dloads/javafx/javafx-sdk-11.0.2/lib"
# export JAVA_HOME="/usr/lib/jvm/jdk-14"
# 
# for file in `find ~/dloads/nlp/stanford-corenlp-full-2018-10-05/ -name "*.jar"`; do
#     export CLASSPATH="$CLASSPATH:`realpath $file`"
# done

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true

# Pista stuff
# prompt string to display, for regular users
export PROMPT_CHAR="$"
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

