
# set some good env vars
export PAGER=less
export EDITOR=vim
export VISUAL=vim

# some more ls aliases
alias ..='cd ..'
alias ll='ls -lhA'
alias la='ls -A'
# alias l='ls -CF'

# better safe than sorry
alias rm='rm -I -v'

alias todo='$EDITOR ~/billy.todo'

alias cgrep='LC_ALL="C" grep -n --exclude=".*" --exclude="*.svn-base" --exclude="*.o" --exclude="*.a" --exclude="*.so" --exclude="*.class" --exclude="*.jar" --exclude="*~" --color=auto -B 1 -A 1'

alias cpptags='ctags --recurse --language-force=c++ --extra=+q --fields=+i *.cpp *.h'

