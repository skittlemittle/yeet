# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#where are ur  fucking alias vim? - Fark 
#here they are owo -vim
alias la="exa -lha"
alias ll="exa -lh"
alias vim="nvim"
alias pst="pstree"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# I like colors in my life, green uname and hostname blue path and $ sign
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W \$ \[\033[00m\]"
# le path
export PATH=~/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source "$HOME/.cargo/env"
