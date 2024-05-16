#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
local git_prompt=' $(git_prompt_info)'
# PROMPT="%{%F{083}%}╭─%{%F{014}%n%}%{%F{190}@%}%{%F{204}%m%} %f%{%F{170}[%~]%}${git_prompt}
# %{%F{083}%}╰➜ %{$reset_color%}"
# PROMPT="%{%F{014} %n%}%{%F{204}  %m%} %f%{%F{170} %~%}${git_prompt}
# %{%F{119}%}❱%{%F{141}%}❱%{%F{212}%}❱ %{$reset_color%}"

PROMPT="%{%F{015}%} %{%F{119}%}❱%{%F{141}%}❱%{%F{212}%}❱%{$reset_color%} "
# PROMPT="%{%F{015} %}_ %{$reset_color%}"
#PROMPT+=' $(git_prompt_info)'
#PROMPT="%{%F{083}%}╭─%{%F{014}%n%}%{%F{190}@%}%{%F{204}%m%} %{%F{177}[%D%@]%}
#%{%F{083}%}╰➜ "%{$reset_color%}
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
