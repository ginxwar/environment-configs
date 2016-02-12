function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne '\e[m'; }

for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

if [ -f ~/.git-completion.bash ] && [ -f ~/.git-prompt.sh ]
then
  source ~/.git-completion.bash
  source ~/.git-prompt.sh
  export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$(__git_ps1 '(%s)')$ "
else
  export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$ "
fi

# node version manager
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# path
PATH=$PATH:~/bin

# history size
HISTSIZE=100000
HISTFILESIZE=100000
