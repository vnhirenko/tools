function parse_git_branch() {
  branch=$(git branch --show-current 2> /dev/null)
  if [ ! -z "$branch" ]
  then
    echo " [$branch]"
  fi
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}$(basename $(pwd))${COLOR_DEF}${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# PS1='\w\$ '