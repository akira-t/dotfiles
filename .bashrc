
export GNUTERM=aqua

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

# opencvÖA
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export EDITOR="vim"

# enhancd
if [ -f "~/.enhancd/bash/enhancd.bash" ]; then
    source "~/.enhancd/bash/enhancd.bash"
fi
