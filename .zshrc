# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/joaop-oliveira/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git)

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
#
#
# Personal Computer Aliases
alias joaop.dev="cd ~/Projects/Personal/joaop.dev"
alias config_shell="nvim ~/.zshrc"
alias config_editor="nvim ~/.config/nvim"
alias reload="source ~/.zshrc"
alias zap='rm -i'
# This will start a xdai node chain to play Dark Forest
alias start_xdai_node="clear && cd ~/Programs/Tools/Openethereum && clear && ./openethereum --chain xdai --rpc --jsonrpc-apis=all --jsonrpc-cors=all --jsonrpc-interface=192.168.0.4"



# Specbooks Aliases
alias specbooks="cd ~/Projects/Specbooks"
alias legacy_specbooks="cd ~/Projects/Specbooks/Legacy/gui-specbooks-main"

# Specbooks Marketplaces Aliases
alias marketplaces="cd ~/Projects/Specbooks/Marketplace"
alias fixtureexchange="cd ~/Projects/Specbooks/Marketplace/"
alias dev_components="cd ~/Projects/Specbooks/Libraries/components && nvim"
alias start_winsupply="clear && nvm use 14 && npm link sb-components && clear && cd ~/Projects/Specbooks/Marketplace/winsupply && npm run dev"

# Specbooks Management Page Aliases
alias accounttab="cd ~/Projects/Specbooks/MyAccountTab/my-account"
alias start_accounttab="cd ~/Projects/Specbooks/MyAccountTab/my-account && npm run dev"
alias start_specbooks="nvm use 16 && cd ~/Projects/Specbooks/Legacy/specbooks-gui && npm run dev"
alias start_legacy="nvm use 14 && cd ~/Projects/Specbooks/Legacy/gui-specbooks-main && npm run start"
alias dev_specbooks="cd ~/Projects/Specbooks/Legacy/specbooks-gui && clear && nvim"



# Functions Block

dev_marketplace() {
  clear && nvm use 14 > /dev/null;
  cd ~/Projects/Specbooks/Marketplace/;
  cd "$1" && npm link sb-components >> /dev/null && npm run dev;
}

ssh_keygen() {
  ssh-keygen -o -a 100 -t ed25519 -b 4096 -f "/home/joaop-oliveira/.ssh/$1" -C $2
}


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export INSTANCES="specbooks-microservices:us-central1:specbooks-prod=tcp:0.0.0.0:4306,specbooks-microservices:us-central1:specbooks-testing-mysql=tcp:0.0.0.0:5306,specbooks-microservices:us-central1:marketplace-testing=tcp:0.0.0.0:6306,specbooks-microservices:us-central1:marketplace-production=tcp:0.0.0.0:7306"

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/joaop-oliveira/bin:~/.npm-globals/bin:~/.local/bin:/home/joaop-oliveira/Projects/Personal/Scripts

source /home/joaop-oliveira/google-cloud-sdk/completion.zsh.inc
source /home/joaop-oliveira/google-cloud-sdk/path.zsh.inc

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

