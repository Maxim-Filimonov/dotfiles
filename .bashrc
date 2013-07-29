[[ "$-" != *i* ]] && return
# alias cd=cd_func
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias g='vim --remote-silent'
# Use tmux in 256 colors mode everytime
alias tmux="tmux -2"
# Alias for mongo db start
alias mongos="mongod run --config /usr/local/etc/mongod.conf"
# Alias to command with color for ls and greps
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias be='bundle exec'
# Make VIM default editor
export EDITOR='vim -f'
export CLICOLOR=1
# Use utf-8 language everywhere
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8

. $HOME/.bashrc.load
# Displaying git branch
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.nvm/nvm.sh

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator # TMUXINATOR 
