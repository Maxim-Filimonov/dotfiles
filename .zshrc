# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git gitfast rails ruby vi-mode osx)
plugins=(git rails ruby vi-mode osx gitflow)

source $ZSH/oh-my-zsh.sh

# Use vim from macvim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# Use vim to open a lot of files by mask
alias rv='vim --remote-silent'
# Use tmux in 256 colors mode everytime
alias tmux="tmux -2"
# Alias for mongo db start
alias mongos="mongod run --config /usr/local/etc/mongod.conf"
# Make VIM default editor
export EDITOR='vim'
# Customize to your needs...
export PATH=/Library/Frameworks/Python.framework/Versions/Current/bin:~/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin/eb/macosx/python2.7/:$GOPATH/bin
# Stop autocorrection
unsetopt correct_all
# Turn off globbing for rake
alias rake='noglob rake'
alias git='noglob git'
# TMUXINATOR
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
# Bind JJ to switch to normal mode
bindkey -M viins 'jj' vi-cmd-mode
# Alisa be to bundle exec
alias be='bundle exec'
# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Use hub
alias git=hub
export GOPATH="$HOME/gocode"
