#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#

# Source global configurations
if [ -e /etc/zshrc ] ; then
   source /etc/zshrc
fi


# Source local general zsh functions
if [ -f ~/.zsh_include ] ; then
   source ~/.zsh_include
fi


# Source local specific zsh aliases
if [ -f ~/.zsh_aliases ] ; then
   source ~/.zsh_aliases
fi


# User specific environment
if ! [[ "${PATH}" =~ "${HOME}/.local/bin:${HOME}/bin:" ]]; then
   PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature
#export SYSTEMD_PAGER=


# User specific aliases and functions
if [ -d ~/zshrc.d ]; then
   for rc in ~/zshrc.d/*; do
      if [ -f "$rc" ]; then
         source "$rc"
      fi
   done
fi

unset rc

