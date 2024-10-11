source /usr/share/git/completion/git-prompt.sh

# Define color codes
DIR_COLOR="\[\033[38;5;108m\]"  # #8ca589
GIT_COLOR="\[\033[38;5;110m\]"  # #7d92a2
PROMPT_COLOR="\[\033[38;5;167m\]"  # #c65f5f
RESET_COLOR="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

function git_ps1 {
  __git_ps1 ' | %s %d' | sed 's/[=0]//g'
}

PS1="${DIR_COLOR}\w$GIT_COLOR\$(git_ps1)\n${PROMPT_COLOR}> ${RESET_COLOR}"

neofetch
