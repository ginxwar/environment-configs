function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne '\e[m'; }
export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\] at\[`EXT_COLOR 208`\] \H\[`CLOSE_COLOR`\] in\[`EXT_COLOR 148`\] \w \[`CLOSE_COLOR`\] \n\$ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/perl5/perlbrew/etc/bashrc
alias ll="ls -la"
