# Disable correction
alias cp='nocorrect cp'
alias gcc='nocorrect gcc'
alias ln='nocorrect ln'
alias rm='nocorrect rm'

# Disable globbing.
# alias bower='noglob bower'
# alias fc='noglob fc'
# alias find='noglob find'
# alias ftp='noglob ftp'
# alias history='noglob history'
# alias locate='noglob locate'
# alias rake='noglob rake'
# alias rsync='noglob rsync'
# alias scp='noglob scp'
# alias sftp='noglob sftp'

# Define general aliases.
alias cpf="${aliases[cp]:-cp} -f"
alias cp="${aliases[cp]:-cp} -i"
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias ln="${aliases[ln]:-ln} -i"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias mv="${aliases[mv]:-mv} -i"
alias rm="${aliases[rm]:-rm} -i"
alias rmf='rm -rf'
alias rcp='rsync -v --progress'
alias rmv='rsync -v --progress --remove-source-files'
alias rscp='rsync -Pravdtze ssh'
alias x=exit
alias type='type -a'
alias ex=extract

alias fd='find . -type d -name'
alias ff='find . -type f -name'
# alias grep='grep --color --exclude-dir={.git,.svn,CVS,.hg,.bzr} --exclude={.git,.svn,CVS,.hg,.bzr}'
alias g='grep -in'
alias egrep='egrep --colour=auto'
alias sgrep='grep -R -n -H -C 5'
alias hs=history
alias hf='fc -il 1'
alias jb='jobs -l'
# alias n=nvim
alias vim='mvim -v'
alias vi=vim
alias v=vim
alias vf='f -e vim'
alias m=more
alias p=less
alias h=head
alias t='tail -f'
alias c='pygmentize -O style=monokai -f console256 -g'

alias ls="${aliases[ls]:-ls} -hF --group-directories-first"
alias l='ls -A'           # Lists in one column, hidden files.
alias ll='ls -l'          # Lists human readable sizes.
alias lr='ll -tR'         # Lists human readable sizes, recursively.
alias la='ll -A'          # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"'  # Lists human readable sizes, hidden files through pager.
alias lx='ll -XB'         # Lists sorted by extension (GNU only).
alias lk='ll -Sr'         # Lists sorted by size, largest last.
alias lt='ll -tr'         # Lists sorted by date, most recent last.
alias lc='lt -c'          # Lists sorted by date, most recent last, shows change time.
alias lu='lt -u'          # Lists sorted by date, most recent last, shows access time.
alias ldot='ll -d .*'
alias lS='ls -1Ss'
alias lart='ls -1cArt'
alias lrt='ls -1crt'

alias pbc=pbcopy
alias pbp=pbpaste

# File Download
if (( $+commands[curl] )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
elif (( $+commands[wget] )); then
  alias get='wget --continue --progress=bar --timestamping'
fi

# Resource Usage
alias df='df -kh'
alias du='du -kh'
alias dum='du --max-depth=1'
alias dus='du -s'
# File size
alias fs="stat -f \"%z bytes\""

alias htop='sudo htop'
if (( $+commands[htop] )); then
  alias top=htop
else
  if [[ "$OSTYPE" == (darwin*|*bsd*) ]]; then
    alias topc='top -o cpu'
    alias topm='top -o vsize'
  else
    alias topc='top -o %CPU'
    alias topm='top -o %MEM'
  fi
fi
alias pf='ps -f'
#alias pt='ps uxwf'
alias tree='tree -Csu'

alias ipy='ipython'
alias jqt='jupyter qtconsole &'
alias jnt='jupyter notebook &'
alias tf='tldr find'
alias tu='tldr update'
alias hfs='hadoop fs'

export SSH_DPORT=8136
alias sf='http_proxy=127.0.0.1:$SSH_DPORT https_proxy=127.0.0.1:$SSH_DPORT'

alias r='rlogin'
alias ppath='echo -e ${PATH//:/\\n}'

alias mdplus='open ~/Work/Languages/js/packages/markdown-plus/index.zh_CN.html'
alias mdses='(export PORT=5000 && node ~/Work/Languages/js/packages/stackedit/server.js) &'
alias mdse='open -a "Safari" "http://localhost:5000/"'

#alias print='/usr/bin/lp -o nobanner -d $LPDEST' 
#alias pjet='enscript -h -G -fCourier9 -d $LPDEST'
#alias background='xv -root -quit -max -rmode 5'  
alias stnr='sort -n -r'
alias unexport='unset'
alias ccat=colorize

# mac osx
alias o=open
alias of='a -e open'

# typoes
alias lcd='l;cd'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'
alias scr='screen -r'
alias scd='screen -d'

# alias fk='fuck'
# alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias -- -='cd -'
alias cd/='cd /'
alias cd..='cd ../'
alias cd...='cd ../../'
alias cd....='cd ../../../'
alias cd.....='cd ../../../../'

alias po='popd'
alias pu='pushd'

# Command line head / tail shortcuts
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g CA="2>&1 | cat -A"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'
alias -g G='| grep'
alias -g H='| head'
alias -g L="| less"
alias -g LL="2>&1 | less"
alias -g LS='| less -S'
alias -g M="| most"
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"
alias -g PY="-i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com"
alias -g RNS='| sort -nr'
alias -g S='| sort'
alias -g SB="-Dsbt.override.build.repos=true"
alias -g T='| tail'
alias -g TL='| tail -20'
alias -g US='| sort -u'
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g X='| xargs'


# git
# alias gl="git pull"
alias glc="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# draw back a `git push`  or a `git commit`
alias gdp="git push -f origin HEAD^:master"
alias gdc="git reset --soft HEAD^"
alias grs="git reset --soft"
# git root
alias groot='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# zsh is able to auto-do some kungfoo
# depends on the SUFFIX :)
if is-at-least 4.2.0; then
  # open browser on urls
  # _browser_fts=(htm html de org net com at cx nl se dk dk php)
  # for ft in $_browser_fts ; do alias -s $ft=$BROWSER ; done

  # _editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
  # for ft in $_editor_fts ; do alias -s $ft=$EDITOR ; done

  # _image_fts=(jpg jpeg png gif mng tiff tif xpm)
  # for ft in $_image_fts ; do alias -s $ft=$XIVIEWER; done

  # _media_fts=(ape avi flv mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
  # for ft in $_media_fts ; do alias -s $ft=mplayer ; done

  # #read documents
  # alias -s pdf=acroread
  # alias -s ps=gv
  # alias -s dvi=xdvi
  # alias -s chm=xchm
  # alias -s djvu=djview

  #list whats inside packed file
  alias -s zip="unzip -l"
  alias -s rar="unrar l"
  alias -s tar="tar tf"
  alias -s tar.gz="echo "
  alias -s ace="unace l"
fi

# out of RAE
#export BASTION=phx01seh01.phx.paypal.com
#alias sshtunnel='ssh -N -f -L 8010:horton-cli.vip.lvs.paypal.com:22 -g yijiliu@$BASTION'
#alias sshsas1='ssh yijiliu@localhost -p 8011'

# unalias scp
#alias scpsas1='scp -P 8011'

alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# generic colouriser
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
    then
        alias colourify="$GRC -es --colour=auto"
        alias configure='colourify ./configure'
        for app in {diff,make,gcc,g++,ping,traceroute}; do
            alias "$app"='colourify '$app
    done
fi
