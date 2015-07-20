function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne '\e[m'; }

#export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$ "

alias ll="ls -lahFG"

#git specific
alias gti="git"
alias gs="git status"
alias gl="git log"

if [ -f ~/.git-completion.bash ] && [ -f ~/.git-prompt.sh ]
then
  source ~/.git-completion.bash
  source ~/.git-prompt.sh
  export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$(__git_ps1 '(%s)')$ "
else
  export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$ "
fi
