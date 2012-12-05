# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="alanpeabody"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git taskwarrior debian zsh-syntax-highlighting dircycle jira) 

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ack='ack-grep'


#SSH aliases
alias duff='ssh duff'
alias jafar='ssh jafar'
alias alicia='ssh alicia'
alias wba1='ssh wba1'
alias amber='ssh amber'
alias truce='ssh truce'

#Extended globbing
setopt extendedglob

#git-svn additional aliases
alias gsi="git svn info"
alias gsl="git svn log --show-commit --oneline"

#disable auto correct
unsetopt correct_all

#add local scripts to path
PATH=$PATH:~/scripts/sh/

#Function to calculate the difference beetween two dates
datediff() {
	    d1=$(date -d "$1" +%s)
	        d2=$(date -d "$2" +%s)
		    echo $(( (d1 - d2) / 86400 )) days
	    }

