precmd () {
    print ''
}
PROMPT='%F{2}$(_prompt_pwd)%F{8} $(git_prompt_info) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}%{$bg[black]%}%{$fg[black]%}%{$bg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}%{$bg[black]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[black]%}×%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[black]%}·%{$reset_color%}"
