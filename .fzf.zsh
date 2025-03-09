# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/wervand/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/wervand/.fzf/bin"
fi

eval "$(fzf --zsh)"
