# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

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
plugins=(git taskwarrior zsh-syntax-highlighting dircycle tmux history-substring-search themes nyan npm pj bower jira docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ack='ack-grep'


#SSH aliases
alias duff='ssh duff'
alias jafar='ssh jafar'
alias wba1='ssh wba1'
alias wbatbg='ssh wbatbg'
alias amber='ssh amber'
alias truce='ssh truce'
alias krusty='ssh krusty'
alias plinto='ssh plinto'
alias gordian='ssh gordian'
alias baxter='ssh baxter'

#Extended globbing
setopt extendedglob

#git-svn additional aliases
alias gsi="git svn info"
alias gsl="git svn log --show-commit --oneline"

#ack-grep additional aliases
alias ackf="ack -f -g"

#kill tomcat when goes in permgen space
alias kt="kill -9 `pgrep -f tomcat`"

#disable auto correct
unsetopt correct_all

#add local scripts to path
PATH=$PATH:~/scripts/sh/:~/java/android-sdk-linux/platform-tools:~/java/android-sdk-linux/tools

#Function to calculate the difference beetween two dates
datediff() {
	    d1=$(date -d "$1" +%s)
	        d2=$(date -d "$2" +%s)
		    echo $(( (d1 - d2) / 86400 )) days
	    }
export JAVA_HOME=/opt/jdk1.7.0_67/

#Setting of mysql promt with colors
export MYSQL_PS1="mysql@tbg (\d)> "

alias mysql='rlwrap -apassword_prompt -p"green" mysql'

#Alias per ag silver searcher
alias ag-jsp='ag -G \.jsp'
alias ag-js='ag -G \.js'
alias ag-java='ag -G \.java'
alias ag-prop='ag -G \.properties'
alias ag-xml='ag -G \.xml'
alias ag-html='ag -G \.\(html\|html\)'
alias ag-css='ag -G \.css'

#Alias per play2
alias p215='~/bin/play-2.1.5/play'
alias p221='~/bin/play-2.2.1/play'

#Alias x estensioni
alias -s html='firefox'

#Alias x gcalcli
alias gcalm='gcalcli calm'
alias gcalw='gcalcli calw'

#Alias per bower
alias bower='noglob bower'

#Config for pj plugin (project folders)
EDITOR=gvim
PROJECT_PATHS=(~/netProgetti ~/playProgetti ~/progetti)
