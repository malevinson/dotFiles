# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


DEFAULT_USER=$USER

export PATH="$PATH:/opt/yarn-[1.12.3]/bin"
export PATH="/opt/gradle/gradle-4-10.3/bin:$PATH"
export PATH="$PATH:`yarn global bin`"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"
export NVM_DIR=/Users/mlevinson/.nvm
source /usr/local/opt/nvm/nvm.sh

alias gsv="git status | vim -"
alias cb="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"
alias gbv="git branch | vim -"
alias gd='git diff'
alias gp='git pull'
alias gap='git add -p'
alias cpyml='git cherry-pick yml'
alias ts='tig status'
alias nv='--no-verify'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gr='git reset'
alias gdel='git branch -D'
alias gdf='git diff'
alias grof='git checkout HEAD --'
alias s='git add . && git commit -m "save"'
alias g='git'
alias k='gitk'
alias gcp='git cherry-pick'
alias gsh='git stash'
alias gash='git stash -k -u'
alias gshp='git stash pop'
alias gsl='git stash list'
alias gsa='git stash apply'
alias gss='git stash save'
alias gs='git status'
alias gl='git log'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gmc='git merge --continue'
alias gma='git merge --abort'
alias gcpc='git cherry-pick --continue'
alias gcpa='git cherry-pick --abort'
alias gcpa='git cherry-pick --abort'
alias glf='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%an]" --decorate --numstat'
alias gl1='git log --numstat -1'
alias gl2='git log --numstat -2'
alias gl3='git log --numstat -3'
alias gw='git show'
alias gld='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%an]" --decorate --date=relative'
alias gprom='git pull --rebase origin master'
alias gprod='git pull --rebase origin develop'
alias gpro='git pull --rebase origin'
alias gpod='git pull origin develop'
alias gpom='git pull origin master'
alias gpl='git pull'
alias gpo='git push origin'
alias gfa='git fetch --all'
alias grhom='git reset --hard origin/master'
alias grho='git reset --hard origin/'
alias gpo='git push origin HEAD'
alias gsa1='git stash apply stash@{1}'
alias gsa2='git stash apply stash@{2}'
alias grhod='git reset --hard origin/develop'
alias gcm='git checkout master'
alias gcod='git checkout develop'
alias grh='git reset HEAD~'
alias grh2='git reset HEAD~2'
alias grh3='git reset HEAD~3'
alias grh4='git reset HEAD~4'
alias grh5='git reset HEAD~5'
alias grh6='git reset HEAD~6'
alias grh7='git reset HEAD~7'
alias grh8='git reset HEAD~8'
alias grh9='git reset HEAD~9'
alias gdf='git diff'
alias ga='git add .'
alias gca='git commit --amend '
alias gas='git add . && git stash'
alias gr='git reset'
alias t='tig'
alias gb='git branch'
alias gch='git checkout -p'

alias cv="git commit --no-verify -m 'save'"
alias sv='git add . && git commit --no-verify -m "save"'
alias gc='git commit -am'
alias gm='git commit -m'

# Path to your oh-my-zsh installation.
export ZSH="/Users/mlevinson/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
# bindkey '^ ' autosuggest-execute
bindkey '^\' autosuggest-execute

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)
plugins=(zsh-autosuggestions)
plugins=(globalias)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/mlevinson/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mlevinson/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mlevinson/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mlevinson/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mlevinson/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
