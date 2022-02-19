export PS1="[\[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]@\h \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;219m\]\w\[$(tput sgr0)\]]\\$\[$(tput sgr0)\] "
alias grep='grep --color=auto'
alias ls='ls --color=auto'
function cdof() { cd "$(dirname $1)"; }
export PATH=~/bin:$PATH
