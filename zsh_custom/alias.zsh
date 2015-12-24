alias x='exit'
alias scr='screen -r'
alias scd='screen -d'
alias vi='vim'
alias v='vim'

alias jqt='jupyter qtconsole &'
alias jnt='jupyter notebook &'
alias rscp='rsync -Pravdtze ssh'
export SSH_DPORT=8139
alias tf='ssh -D $SSH_DPORT'
alias ef='export http_proxy=socks5://127.0.0.1:$SSH_DPORT https_proxy=socks5://127.0.0.1:$SSH_DPORT'
alias sf='http_proxy=127.0.0.1:8136 https_proxy=127.0.0.1:8136'
alias hfs='hadoop fs'

alias path='echo -e ${PATH//:/\\n}'

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias g='grep -in'
alias h='history'
alias hf='fc -il 1'
alias jb='jobs -l'
alias le='less'
alias m='more'
alias pf='ps -af'
#alias pt='ps uxwf'
alias r='rlogin'

alias lrg='ls -R | grep ":$" | sed -e '\'s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias tree='tree -Csu'

alias mdplus='open ~/Work/Languages/js/packages/markdown-plus/index.zh_CN.html'
alias mdses='(export PORT=5000 && node ~/Work/Languages/js/packages/stackedit/server.js) &'
alias mdse='open -a "Safari" "http://localhost:5000/"'

#alias which='type -all'
#alias print='/usr/bin/lp -o nobanner -d $LPDEST' 
#alias pjet='enscript -h -G -fCourier9 -d $LPDEST'
#alias background='xv -root -quit -max -rmode 5'  
alias sortnr='sort -n -r'
alias unexport='unset'
alias ccat='pygmentize -O bg=dark'

#alias du='du -kh'
alias dum='du --max-depth=1'
alias dus='du -s'
#alias df='df -kTh'
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias rmr='rm -r'
alias rmf='rm -f'
alias fk='fuck'

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

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"
alias -g PY="-i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com"
alias -g SB="-Dsbt.override.build.repos=true"

# typoes
alias lcd='l;cd'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# git
alias gl="git pull"
alias glm='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias glp="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glpg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

# aliases - mnemonic: prefix is 'sb'
alias sbc='sbt compile'
alias sbco='sbt console'
alias sbcq='sbt console-quick'
alias sbcl='sbt clean'
alias sbcp='sbt console-project'
alias sbd='sbt doc'
alias sbdc='sbt dist:clean'
alias sbdi='sbt dist'
alias sbgi='sbt gen-idea'
alias sbp='sbt package'
alias sbps='sbt publish'
alias sbpl='sbt publish-local'
alias sbr='sbt run'
alias sbrm='sbt run-main'
alias sbu='sbt update'
alias sbx='sbt test'
alias sbccp='sbt clean compile package'

# alias for sublime text 
if [[ $('uname') == 'Linux' ]]; then
    local _sublime_linux_paths > /dev/null 2>&1
    _sublime_linux_paths=(
        "$HOME/bin/sublime_text"
        "/opt/sublime_text/sublime_text"
        "/usr/bin/sublime_text"
        "/usr/local/bin/sublime_text"
        "/usr/bin/subl"
    )
    for _sublime_path in $_sublime_linux_paths; do
        if [[ -a $_sublime_path ]]; then
            st_run() { $_sublime_path $@ >/dev/null 2>&1 &| }
            alias st=st_run
            break
        fi
    done
elif  [[ "$OSTYPE" = darwin* ]]; then
    local _sublime_darwin_paths > /dev/null 2>&1
    _sublime_darwin_paths=(
        "/usr/local/bin/subl"
        "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
        "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl"
        "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
        "$HOME/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
        "$HOME/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl"
        "$HOME/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
    )
    for _sublime_path in $_sublime_darwin_paths; do
        if [[ -a $_sublime_path ]]; then
            alias subl="'$_sublime_path'"
            alias st=subl
            break
        fi
    done
fi

alias stt='st .'

# out of RAE
#export BASTION=phx01seh01.phx.paypal.com
#alias sshtunnel='ssh -N -f -L 8010:horton-cli.vip.lvs.paypal.com:22 -L 8011:phxaidisas01.phx.paypal.com:22 -L 8012:phxaidisas02.phx.paypal.com:22 -L 8013:phxaidiedge3.phx.paypal.com:22 -L 8014:phxaidiedge2.phx.paypal.com:22 -L 8015:phxaidiedge1.phx.paypal.com:22 -L 8016:phxaidimb1.phx.paypal.com:22 -L 8017:phxaidimb2.phx.paypal.com:22 -L 8018:phxaidimb3.phx.paypal.com:22 -L 8019:phxaidimb4.phx.paypal.com:22 -L 8020:phxaidimb5.phx.paypal.com:22 -L 8021:phxaidimb6.phx.paypal.com:22 -L 8022:phx01idiawle01.phx.paypal.com:22 -L 8023:lvscszcrm1.lvs.paypal.com:22 -L 8024:lvscszcrm2.lvs.paypal.com:22 -L 8025:lvscszcrm3.lvs.paypal.com:22 -L 8026:lvscszcrm4.lvs.paypal.com:22 -L 8027:lvscszcrm5.lvs.paypal.com:22 -L 8028:lvscszcrm8.lvs.paypal.com:22 -L 8029:lvshdc5en0006.lvs.paypal.com:22 -L 1025:leopard.lvs.paypal.com:1025 -g yijiliu@$BASTION'
#alias sshsas1='ssh yijiliu@localhost -p 8011'

unalias scp
#alias scpsas1='scp -P 8011'

export ALIEXT1="mingxian.lyj@100.81.137.24"
export ALIEXT2="mingxian.lyj@100.81.137.25"
alias ssh24='ssh mingxian.lyj@100.81.137.24'
alias ssh25='ssh mingxian.lyj@100.81.137.25'

export BDE1="mingxian.lyj@bde-1.inc.alipay.net"
export BDE4="mingxian.lyj@bde-4.inc.alipay.net"
export BDE3="mingxian.lyj@bde-3.inc.alipay.net"

alias jzue='ssh mingxian.lyj@login1.zue.alibaba.org'
alias jztg='ssh mingxian.lyj@login1.ztg.alibaba.org'

alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"

