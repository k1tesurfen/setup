# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# zsh tmux settings
#ZSH_TMUX_AUTOSTART='true'

# Path to your oh-my-zsh installation.
export ZSH="/Users/km/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="k1te"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git osx colored-man-pages  
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#======================================================================================
# aliases
#======================================================================================

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias speedtest="speedtest-cli --simple"
alias ls="ls -G"
alias ll="ls -a"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias so="source ~/.zshrc && rehash"
alias sotmux="tmux source-file ~/.tmux.conf"
alias zshconfig="v ~/.zshrc"
alias tmuxconfig="v ~/.tmux.conf"
alias tofinder="ofd"
alias fromfinder="cdf"
alias ga="git add ."
alias gs="git status"
alias v="vim"
alias vimconfig="vim ~/.vimrc"
alias python="python3"
alias copydir="pwd|pbcopy"
alias sshhome="ssh -p22 k1te@109.235.227.249"
alias cduni="cd ~/Documents/uni/"
alias cdgit="cd ~/Documents/git/"
alias cddev="cd ~/Documents/projects/08dev/"
alias fixaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"

#======================================================================================
# functions
#======================================================================================

function mama() {
    cd ~
    quotes=("Koi Problem i hol di ab" "Kerle do gosch no" "Got Ya" "Mom to the rescue" "Wennd gsuffa bisch goschd hoim" "Ed jetzt" "Schüssel" "Himmel Herrgott Zackrament" "There you go sweetheart" "FFS..." "For Fuck Sake" "Seht her Herr \
Frodo, die Adler kommen" "Sohn ich habe noch einen Kunden da" "Sorry koi Zeit" "Bitte nicht so feste ins Gesicht" "HUH? Fußpuren?" "GET TO THE CHOPPER!")
    randomval=$[$RANDOM % ${#quotes[@]-1}+1]
    echo ${quotes[$randomval]}
}


function papa() {
    cd - > /dev/null
    quotes=("Kerle wa machsch" "I hans dir scho so oft gsait" "Back to the future!" "Ohne Worte..." "Huiii!" "Call me daddy" "Hosch du mir an Zuckr" "Das macht zwei komma fuchzig EURO!" "Ja gut eh")
    randomval=$[$RANDOM % ${#quotes[@]-1}+1]
    echo ${quotes[$randomval]}
}

function gitgut() {
    echo "Adding some unimportant stuff"
    git add .
    echo "Obacht die Commit-Sause geht los"
    git yolo
    echo "Und jetzt hau wech die Scheiße!"
    git push
}

function mkd()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

function gitreset() {

    git reset --hard origin/"$1"

}
export PATH="/usr/local/sbin:$PATH"

eval $(thefuck --alias)
