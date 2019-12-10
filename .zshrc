# if you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/hel1/.oh-my-zsh"

# Path to Android Studio
export PATH=$HOME/android-studio/bin:$PATH

# Pip path
export PATH=$HOME/.local/bin:$PATH

# Path to Atollic Truestudio
export PATH=/opt/Atollic_TrueSTUDIO_for_STM32_x86_64_9.3.0/ide:$PATH

# Nordic Semi Paths
export PATH=~/Documents/tools/nrfjprog/nrfjprog:$PATH
export PATH=~/Documents/tools/nrfjprog/mergehex:$PATH
export PATH=/usr/local/gcc-arm-none-eabi-6-2017-q2-update/bin:$PATH

# TLDR Path
export PATH=$HOME/bin:$PATH

ZSH_THEME="geometry/geometry"
# Geometry config
PROMPT_GEOMETRY_COLORIZE_SYMBOL=true
GEOMETRY_SYMBOL_PROMPT="▲"
GEOMETRY_COLOR_EXIT_VALUE="magenta"         # prompt symbol color when exit value is != 0
GEOMETRY_COLOR_PROMPT="white"               # prompt symbol color
GEOMETRY_COLOR_ROOT="red"                   # root prompt symbol color
GEOMETRY_COLOR_DIR="red"                   # current directory color

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  pip
  python
  last-working-dir
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias shutdown='systemctl poweroff'
alias reboot='systemctl reboot'
# Redirect stderr output to dev/null when starting evince (Lots of warnings)
alias evince='evince 2> /dev/null'
# Quick CD to assa proj
alias assa="cd ~/Documents/assa/"
# Quick CD to Hovding
alias hovd="cd ~/Documents/hovding/vega_ble_fw"
# Output ASCII table
alias ascii="cat ~/Documents/documentation/Linux-Stuff/ascii/ascii_table"

