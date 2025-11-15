#                  _           _            _ _                           _
#  _ __  _ __ ___ (_) ___  ___| |_     __ _| (_) __ _ ___  ___  ___   ___| |__
# | '_ \| '__/ _ \| |/ _ \/ __| __|   / _` | | |/ _` / __|/ _ \/ __| / __| '_ \
# | |_) | | | (_) | |  __/ (__| |_   | (_| | | | (_| \__ \  __/\__ \_\__ \ | | |
# | .__/|_|  \___// |\___|\___|\__|___\__,_|_|_|\__,_|___/\___||___(_)___/_| |_|
# |_|           |__/             |_____|
#

# =================================================================================================================================
# --                                                      Command Aliases                                                        --
# =================================================================================================================================

# Start tmux and attach to the 'base' session
alias tasb='tmux a -t base'

# Terminate the 'base' session
alias tksb='tmux kill-session -t base'



# =================================================================================================================================
# --                                                     Directory Aliases                                                       --
# =================================================================================================================================

# Requires ~/data/code-training to exist
alias ct='cd ${DATA_ROOT}/code-training'

# Requires ~/data/emb to exist
alias emb='cd ${DATA_ROOT}/emb'

# Requires ~/data/dataworkspace/hoofbeats to exist
alias hb='cd ${WORKSPACEROOT}/hoofbeats'

# Requires ~/data/research to exist
alias research='cd ${DATA_ROOT}/research'

