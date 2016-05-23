# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

#Git prompt 
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

#Add git branch to terminal (See ~/git-completion.bash)

GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
YELLOW="\[\033[0;33m\]"

function parse_hg_branch() {
  hg prompt " ({branch}){status}" 2> /dev/null
}

PS1="$GREEN\u$WHITE@$GREEN\h $WHITE\W$YELLOW\$(__git_ps1)$YELLOW\$(parse_hg_branch)$WHITE: "
