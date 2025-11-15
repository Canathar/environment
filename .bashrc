#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#

# Source global configurations
if [ -e /etc/bashrc ] ; then
   source /etc/bashrc
fi


# Source local general bash functions
if [ -f ~/.bash_include ] ; then
   source ~/.bash_include
fi


# Source local specific bash aliases
if [ -f ~/.bash_aliases ] ; then
   source ~/.bash_aliases
fi


# User specific environment
if ! [[ "${PATH}" =~ "${HOME}/.local/bin:${HOME}/bin:" ]]; then
   PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature
#export SYSTEMD_PAGER=


# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
   for rc in ~/.bashrc.d/*; do
      if [ -f "$rc" ]; then
         source "$rc"
      fi
   done
fi

unset rc

