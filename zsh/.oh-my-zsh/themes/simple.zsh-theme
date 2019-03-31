# precmd() { 
#     print ''
#     print -rP "%F{4}$(_prompt_pwd)%F{8}$(git_prompt_info)%{$reset_color%}" 
# }
PROMPT='%F{4}$(_prompt_pwd)%F{8}$(git_prompt_info)%{$reset_color%} $ '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}×%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}·%{$reset_color%}"

