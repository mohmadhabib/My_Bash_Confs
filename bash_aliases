# My Banner
figlet Hi! Habib
echo "  ------- Welcome Back $(whoami) -------"
extip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "External IP: ${extip}"
echo ""
# To Inisalize The Python VENV in the Folder
alias ve='python -m venv ./venv'
# To Activate the VENV
alias va='source ./venv/bin/activate'
# Reloads the bashrc file
alias bashreload="source ~/.bashrc && echo Bash config reloaded"
# Scripts Directory
alias scriptsdir="cd /home/$(whoami)/scripts;ls"
# Clear the screen of your clutter
alias c="clear;source ~/.bashrc"
alias cs="clear;ls"
# some more ls aliases
alias ll='ls -alh'
# This is GOLD for finding out what is taking so much space on your drives!
alias diskspace="du -S | sort -n -r |more"
# Find Python Virtual Envs around Home Dirictory
alias findenvs='locate -b "\activate" | grep "/home"'
# YouTube Downloader
alias ytpl="youtube-dl -o '/home/mknh/Downloads/YouTube/%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s'"
# Exit
alias q='exit'
# Aliases For CD
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias back='cd $OLDPWD'
#Sudo Commands
alias svim='sudo vim'
alias snano='sudo nano'
# Bash Edit
alias bashedit="nano ~/.bashrc"
alias bashaliasesedit="nano ~/.bash_aliases"
