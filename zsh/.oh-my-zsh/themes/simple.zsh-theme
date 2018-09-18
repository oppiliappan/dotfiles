PROMPT='%F{3}$(_prompt_pwd)%F{8} $(git_prompt_info) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}%{$bg[black]%}%{$fg[black]%}%{$bg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}%{$bg[black]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[black]%}×%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[black]%}·%{$reset_color%}"
