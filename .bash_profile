export PS1="\[\033[38:5;158m\][\w]\n  $ \[\033[0m\]"

#export PS1="\[\e[0;34m\][\w] \n > \[\e[1;30m\]"
#export PS2="\[e[0;30m\]"
export EDITOR=vim

export BLOCKSIZE=1k



#aliases
alias cp='cp -iv'
alias mv='cp -iv'
alias mkdir='mkdir -pv'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ~='cd ~'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'
alias edit='emacs'
alias f='open -a Finder'
alias ~='cd ~'
alias c='clear'

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -hGp'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -FlAhGp"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias research='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Research'
alias ccni='ssh TSDMgrst@lp03.ccni.rpi.edu'
alias xsede='ssh -l grst login.xsede.org'
alias QP='cd /Users/GStew/Spring\ 2017/QPII'
alias EM='cd /Users/GStew/Spring\ 2017/EM Theory'
alias anal='cd /Users/GStew/Spring\ 2017/FoA'
alias complex='cd /Users/GStew/Spring\ 2017/Complex Var'
alias pythtb='cd /usr/local/lib/python2.7/site-packages'


alias getip='curl ipecho.net/plain ; echo'
alias myip='ipconfig getifaddr en0'
alias myip2='ipconfig getifaddr en1'

# tmux aliases
alias tmux="tmux -2"
alias newsesh='tmux new -s'
alias attach='tmux attach -t'
alias switch='tmux switch -t'
alias lsesh='tmux list-sessions'
alias ksesh='tmux kill-session -t'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH=/Library/Frameworks/Python.framework/Versions/3.6/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/GStew/.vimpkg/bin
