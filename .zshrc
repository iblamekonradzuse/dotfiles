source ~/fzf-zsh-completion.sh
bindkey '^q' fzf_completion

#gG Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/thegmes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete web-search z)
source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias f,='nvim $(fzf --preview "bat --style=numbers --color=always --line-range :500 --theme=base16 {}")'
alias t,=" tmux attach-session "
alias s,=" open -a SoundCloud "
alias o,=" open -a Obsidian "
alias l=" lsd"
# alias lst=" lsd --tree"
alias cd=" z "
alias cdr= " cd"
alias nv=" nvim"
alias pipes="pipes.sh -t 3"
alias zshrc=" nvim ~/.zshrc"
alias ls="eza -a --icons --color=always --group-directories-first"
alias nvimlua=" nvim ~/.config/nvim/init.lua"
alias lst=" eza -a --icons --color=always --group-directories-first --tree -L 2"
PATH=~/.console-ninja/.bin:$PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias share=" python3 -m http.server 8080"
# Increase kitty background opacity by 0.05
alias k09=" kitty @ set-background-opacity 0.9"
alias k1=" kitty @ set-background-opacity 1"
alias k095=" kitty @ set-background-opacity 0.95"
alias k08=" kitty @ set-background-opacity 0.8"
alias k07=" kitty @ set-background-opacity 0.7"
alias k05=" kitty @ set-background-opacity 0.5"
alias k04=" kitty @ set-background-opacity 0.4"
alias k06=" kitty @ set-background-opacity 0.6"
alias k085=" kitty @ set-background-opacity 0.85"
# Decrease kitty background opacity by 0.05
alias h,=" history | fzf "
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# printf "\n\n" && neofetch --source /Users/wervand/Desktop/des/no\ cat/customize/ascii/pikachu.txt --ascii_colors 3
#neofetch --source /Users/wervand/Desktop/des/no\ cat/customize/ascii/ds.txt --ascii_colors 3 7 5
#neofetch --source /Users/wervand/Desktop/des/no\ cat/customize/ascii/ds.txt --ascii_colors 3 7 5 6 1 2
alias neo="neofetch --source '/Users/wervand/Desktop/des/no cat/customize/ascii/skull.txt' --ascii_colors 3 7 5 2 1 6 2 1 2 2"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh || source ~/.cargo/env

# fzf to fuzzy find directories and cd into them
ffd() {
  local dir
  dir=$(find . -type d 2> /dev/null | fzf) && cd "$dir"
}

fft() {
  local dir
  dir=$(find /Users/wervand/Desktop/des -type d 2> /dev/null | fzf) && cd "$dir" && tmux new-session -A -s "$(basename "$dir")"
}

ffa() {
  local dir
  dir=$(find /Users/wervand/ -type d 2> /dev/null | fzf) && cd "$dir" 
}

eval $(thefuck --alias)

# pnpm
export PNPM_HOME="/Users/wervand/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Created by `pipx` on 2024-12-23 23:52:49
export PATH="$PATH:/Users/wervand/.local/bin"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"



bindkey '^a' atuin-search


