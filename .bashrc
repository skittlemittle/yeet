# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# I like colors in my life, green uname and hostname blue path and $ sign
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W \$ \[\033[00m\]"

# User specific aliases and functions

alias ap='cd ~/AndroidStudioProjects'
alias quake='cd ~/Downloads/quake/release-linux-x86_64 && ./ioquake3.x86_64'
alias doom='cd ~/Downloads/gzdoom/build && ./gzdoom'
alias mt5='cd ~/Downloads/minetest/bin && ./minetest'
