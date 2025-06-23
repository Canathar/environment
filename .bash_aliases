#    _               _              _ _
#   | |__   __ _ ___| |__      __ _| (_) __ _ ___  ___  ___
#   | '_ \ / _` / __| '_ \    / _` | | |/ _` / __|/ _ \/ __|
#  _| |_) | (_| \__ \ | | |  | (_| | | | (_| \__ \  __/\__ \
# (_)_.__/ \__,_|___/_| |_|___\__,_|_|_|\__,_|___/\___||___/
#                        |_____|
#

# =================================================================================================================================
# --                                                         Locations                                                           --
# =================================================================================================================================

# Requires ~/data to exist
export DATA_ROOT="${HOME}/data"

# Requires ~/data/dataworkspace to exist
export WORKSPACE_ROOT="${DATA_ROOT}/dataworkspace"



# =================================================================================================================================
# --                                                      Command Aliases                                                        --
# =================================================================================================================================
# NOTE: Uncomment any of the command aliases that are desired

# ============================================================================
# --                                General                                 --
# ============================================================================

# Display the current day of the year
alias doy='date +"%j"'


# ============================================================================
# --                                  C++                                   --
# ============================================================================

# Format provided file into a C++ byte array
# 1. Echo the data that was input
# 2. Format the bytes to display as uppercase with a leading 0x and a trailing comma
# 3. Add the opening and closing braces to the data and remove the last trailing comma
# 4. Add a newline after each 16 bytes of data and indent the next line
alias formhex='h(){ echo $1 | sed -re s"/([a-z0-9]{2})/0x\U\1, /g" | sed -re s"/(.*),/{\n   \1\n};/" | sed -re s"/./&\n  /98;s/./&\n  /197"; unset -f h; }; h'

# Generate a formatted C++ byte array from an entered file
# $1 - Skip offset bytes from the beginning
# $2 - Interpret only specified bytes of input
# $3 - Source file to convert to hex
alias genhex='f(){ formhex $(hexdump -C -s $1 -n $2 $3 | sed -nre s"/([a-f0-9]{8}  )(.*).*  \|.*\|/\2/p" | awk "{ORS=\"\"}{gsub(\" \", \"\", \$0); print}"); unset -f f; }; f'

# Generate a formatted C++ byte array from the sha256sum of an entered file
alias gensha='f(){ formhex $(sha256sum $1 | awk "{print \$1}"); unset -f f; }; f'


# ============================================================================
# --                          Python Environments                           --
# ============================================================================

# Activate/Deactivate conda (Requires conda/miniconda to be installed)
#alias cda='conda activate'
#alias cde='conda deactivate'

# Activate python virtual environment (requires virtual environments to be stored in ~/python-envs)
alias pvea='v(){ source ~/python-envs/$1/bin/activate; unset -f v; }; v'

# Run pycodestyle on a python file (requires pycodestyle package in python environment)
alias pf-pcs='c(){ pycodestyle --ignore E129,E221,W503 --max-line-len=132 $1; unset -f c; }; c'

# Run pydocstyle on a python file (requires pydocstyle package in python environment)
alias pf-pds='d(){ pydocstyle --add-ignore D202 $1; unset -f d; }; d'

# Run pylint on a python file (requires pylint package in python environment)
alias pf-lnt='l(){ pylint --max-line-length=132 --extension-pkg-allow=lxml $1; unset -f l; }; l'


# ============================================================================
# --                              ls Command                                --
# ============================================================================

# Colorize all ls output
alias ls='ls --color=auto'

# Use a long list format
alias ll='ls -al'

# Show hidden files
alias l.='ls -d .*'


# ============================================================================
# --                            *grep Commands                              --
# ============================================================================

# Add color to the egrep command
alias egrep='egrep --color=auto'

# Add color to the fgrep command
alias fgrep='fgrep --color=auto'

# Add color to the grep command
alias grep='grep --color=auto'


# ============================================================================
# --                     Red Hat Package Manager (RPM)                      --
# ============================================================================

# Red Hat Package Manager (RPM) Query Comamnds
# see: man dnf 8 search for 'repoquery command'
alias repoq-all='repoquery -a --qf "%-30{ui_from_repo} %-105{nevra} %{name}"'
alias repoq-inst='repoquery -a --installed --qf "%-30{ui_from_repo} %-105{nevra} %{name}"'
alias repoq-pkg-lst='repoquery -l'



# =================================================================================================================================
# --                                                     Directory Aliases                                                       --
# =================================================================================================================================

# Requires ~/data/code-notes to exist (usually a git repo)
alias cn='cd ${DATA_ROOT}/code-notes'

# Requires ~/data/code-snips to exist (usually a git repo)
alias cs='cd ${DATA_ROOT}/code-snips'

# Requires ~/data to exist
alias data='cd ${DATA_ROOT}'

# Requires ~/data/environment to exist (usually a git repo)
alias environment='cd ${DATA_ROOT}/environment'

# Requires ~/data/dataworkspace/hoofbeats to exist
alias hb='cd ${WORKSPACEROOT}/hoofbeats'

# Requires ~/data/reference to exist (usually a git repo)
alias reference='cd ${DATA_ROOT}/reference'

# Requires ~/data/scripts to exist (usually a git repo)
alias scripts='cd ${DATA_ROOT}/scripts'

# Requires ~/data/dataworkspace to exist
alias wks='cd ${WORKSPACE_ROOT}'

