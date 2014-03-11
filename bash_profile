export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000

#press ctrl+D twice to exit bash, instead of once
export IGNOREEOF=1

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it - fixes multiple terminals
shopt -s histappend

# Fix dodgy spelling
shopt -s cdspell
