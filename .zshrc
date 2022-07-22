# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=refined

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
zstyle ':omz:update' frequency 3

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
plugins=(zsh-syntax-highlighting
         zsh-autosuggestions
	      )

source $ZSH/oh-my-zsh.sh
# User configuration

## activate kubectl autocompletion
source <(kubectl completion zsh)
## set default text editor
export EDITOR=vim

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

# aliases omz function
alias omu="omz update"
alias omr="omz reload"

# use nala instead of apt
# aliases package manager
alias fresh="sudo apt autoclean ; sudo nala update"
alias up="sudo nala update ; sudo nala upgrade -y"
alias rmv="sudo nala purge"
alias rmve="sudo nala autoremove -y"
alias i="sudo nala update ; sudo nala install"
alias show="nala show"
alias search="nala search"
alias list='nala list'
alias depends="apt depends"
alias fetch='sudo nala fetch'

# aliases git control
alias gs='git status'
alias graph='git log --oneline --graph'
alias gc='git commit -m'
alias gd='git diff'
alias gp='git push'
alias ga='git add'
alias gmv='git mv'
alias grm='git rm'
alias gt='git tag'
alias gi='git init'
alias gl='git log'
alias gr='git remote'
alias gb='git branch'
alias clone='git clone'
alias gcheck='git checkout'
alias grest='git restore'
alias gsh='git show'
alias grev='git revert'
alias gconf='git config'
alias greb='git rebase'
alias gcher='git cherry-pick'
alias gm='git merge'
alias gsta='git stash'

# aliases systemd control
alias sysen='sudo systemctl enable'
alias sysr='sudo systemctl restart'
alias sysstop='sudo systemctl stop'
alias sysd='sudo systemctl disable'
alias sysstat='systemctl status'
alias sysstart='sudo systemctl start'

# aliases for vpn
alias pc='protonvpn-cli c'
alias pd='protonvpn-cli d'
alias pcs='protonvpn-cli s'

# ansible aliases
alias a='ansible'
alias ag="ansible-galaxy"
alias ap="ansible-playbook"
alias av="ansible-vault"
alias ad="ansible-doc"

# docker aliases
alias do='docker'
alias dr='do run -itd'
alias dp='do push'
alias di='do images'
alias drm='do rm'
alias drmi='do rmi'
alias dps='do ps -a'
alias db='do build -t'
alias dex='do exec -it'
alias dl='do logs'
alias dstat='do stats'

# kubectl aliases
alias k='kubectl'
alias kv='k version'
alias kg='k get'
alias kc='k create'
alias kex='k exec -it'
alias ka='k apply -f'
alias kdel='k delete'
alias kdesc='k describe'
alias kl='k logs'
alias ked='k edit'

# custom aliases
alias s="sudo"
alias v="vim"
alias sv="sudo vim"
alias ls='ls -lah --color=always'
alias grep='grep -ni --color=always'
alias mac='s macchanger -r'
alias cm='mac wlp2s0 ; hostnamectl set-hostname $RANDOM ; sysstart NetworkManager'
alias dm='sysstop NetworkManager ; mac wlp2s0'

