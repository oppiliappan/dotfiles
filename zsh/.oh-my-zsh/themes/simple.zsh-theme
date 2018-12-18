precmd() { 
    print ''
    print -rP "%{$fg[blue]%}$(_prompt_pwd)%F{8}$(git_prompt_info)%{$reset_color%}" 
}
PROMPT='> '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}×%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}·%{$reset_color%}"

