# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='$FG[032]λ %~/ $(git_prompt_info)% $FG[105]%(!.#.»)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
