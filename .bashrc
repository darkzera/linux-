# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


export GTK_IM_MODULE=ibus

# --------------------------------------------------------- # 
# Minhas config
export PS1="[\w]\n\u@vortex\$ \[$(tput sgr0)\]"
alias sud='sudo -i'
alias desligaragora='shutdown now'
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.npm-global/node_modules/.bin:$PATH

alias mdir='. mcdir'
# --------------------------------------------------------- # 
