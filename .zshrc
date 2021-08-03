# Customize Prompt --> 13:37 DevOps/test (master) %
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%T %2~ %B%F{116}${vcs_info_msg_0_}%f%b %# '
