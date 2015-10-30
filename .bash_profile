if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# for ARM
#PATH=/usr/local/bin:/usr/local/h8300-elf/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin:/opt/local/bin:$PATH
#export PATH=/usr/local/h8300-elf/bin:$PATH

export PATH=/usr/local/bin:$PATH

# MacPorts
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export PATH=~/sh:$PATH

# pyenv
export PATH="$HOME/.pyenv/shims:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
##
# Your previous /Users/akira/.bash_profile file was backed up as /Users/akira/.bash_profile.macports-saved_2009-10-09_at_04:24:49
##

# MacPorts Installer addition on 2009-10-09_at_04:24:49: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/akira/.bash_profile file was backed up as /Users/akira/.bash_profile.macports-saved_2009-11-19_at_08:12:41
##

# MacPorts Installer addition on 2009-11-19_at_08:12:41: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias here='pwd|tr -d "\n"|pbcopy'
alias grep="grep --exclude='*.svn*'"
alias today='date "+%Y/%m/%d %H:%M" | tee | pbcopy'
alias ql='qlmanage -p "$@" >& /dev/null'
alias quicklook='ql'
alias lee='tee'

function copy(){ command echo $@ | tr -d "\n" | pbcopy; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_ROOT=/usr/local/opt/pyenv

