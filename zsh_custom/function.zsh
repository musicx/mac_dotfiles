function take() {
  mkdir -p $1
  cd $1
}

function ffl() { find . -type f -iname '*'$*'*' -ls ; }
function fe() { find . -type f -iname '*'$1'*' -exec "${2:-file}" {} \;  ; }
function ft() { find . -name "$2" -exec grep -il "$1" {} \; }
function fn() { find . -name "$1" 2>&1 | grep -v 'Permission denied' }

function fstr()
{
    OPTIND=1
    local case=""
    local usage="fstr: find string in files.
Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "
    while getopts :it opt
    do
        case "$opt" in
        i) case="-i " ;;
        *) echo "$usage"; return;;
        esac
    done
    shift $(( $OPTIND - 1 ))
    if [ "$#" -lt 1 ]; then
        echo "$usage"
        return;
    fi
    local SMSO=$(tput smso)
    local RMSO=$(tput rmso)
    find . -type f -name "${2:-*}" -print0 | xargs -0 grep -sn ${case} "$1" 2>&- | \
sed "s/$1/${SMSO}\0${RMSO}/gI" | more
}

function cuttail() 
{
    nlines=${2:-10}
    sed -n -e :a -e "1,${nlines}!{P;N;D;};N;ba" $1
}

function lowercase()
{
    for file ; do
        filename=${file##*/}
        case "$filename" in
        */*) dirname==${file%/*} ;;
        *) dirname=.;;
        esac
        nf=$(echo $filename | tr A-Z a-z)
        newname="${dirname}/${nf}"
        if [ "$nf" != "$filename" ]; then
            mv "$file" "$newname"
            echo "lowercase: $file --> $newname"
        else
            echo "lowercase: $file not changed."
        fi
    done
}

function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

function my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ; }
function pp() { my_ps f | awk '!/awk/ && $0~var' var=${1:-".*"} ; }

function killps()   
{
    local pid pname sig="-TERM"
    if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
        echo "Usage: killps [-SIGNAL] pattern"
        return;
    fi
    if [ $# = 2 ]; then sig=$1 ; fi
    for pid in $(my_ps| awk '!/awk/ && $0~pat { print $1 }' pat=${!#} ) ; do
        pname=$(my_ps | awk '$1~var { print $5 }' var=$pid )
        if ask "Kill process $pid <$pname> with signal $sig?"
            then kill $sig $pid
        fi
    done
}

function my_ip()
{
    MY_IP=$(/sbin/ifconfig ppp0 | awk '/inet/ { print $2 } ' | sed -e s/addr://)
    MY_ISP=$(/sbin/ifconfig ppp0 | awk '/P-t-P/ { print $3 } ' | sed -e s/P-t-P://)
}

function ii() 
{
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free
    my_ip 2>&- ;
    echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    echo
}

function ask()
{
    echo -n "$@" '[y/n] ' ; read ans
    case "$ans" in
        y*|Y*) return 0 ;;
        *) return 1 ;;
    esac
}

function td_logon() {
    instance=$1
    user=$(grep -i "^\<$instance\>" $HOME/.tdlogon | cut -d':' -f3)
    pass=$(grep -i "^\<$instance\>" $HOME/.tdlogon | cut -d':' -f4)
    echo $user,$pass
}

function td_host() {
    instance=$1
    host=$(grep -i "^\<$instance\>" $HOME/.tdlogon | cut -d':' -f2)
    echo $host
}

function mcd() {
    mkdir -p "$1" && cd "$1";
}

# .gitignore automation
function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

_gitignoreio_get_command_list() {
    curl -sL https://www.gitignore.io/api/list | tr "," "\n"
}

_gitignoreio () {
    compset -P '*,'
    compadd -S '' `_gitignoreio_get_command_list`
}

compdef _gitignoreio gi

# pbcopy dir / file
function copydir {
    pwd | tr -d "\r\n" | pbcopy
}

function copyfile {
    [[ "$#" != 1 ]] && return 1
    local file_to_copy=$1
    cat $file_to_copy | pbcopy
}

# using marked 2 to open files
#function marked() {
    #if [ "$1" ]
    #then
        #open -a "marked 2.app" "$1"
    #else
        #open -a "marked 2.app"
    #fi
#}

# base64 encoding and decoding
encode64(){ echo -n $1 | base64 }
decode64(){ echo -n $1 | base64 --decode }
alias e64=encode64
alias d64=decode64

function git_update_pwd() {
    for dir in $(print -l $(pwd)/*(/))
    do 
        echo checking $dir
        (cd "$dir" && git pull)
    done
}

ossput() { python ~/Work/Alipay/static/oss/osscmd put $1 oss://101579 }
ossget() { python ~/Work/Alipay/static/oss/osscmd get oss://101579/$1 $1 }

_start_time=$SECONDS
function _prompt_musicx_preexec {
  _start_time=$SECONDS
}

function _calc_elapsed_time {
  if [[ $timer_result -ge 3600 ]]; then
    let "timer_hours = $timer_result / 3600"
    let "remainder = $timer_result % 3600"
    let "timer_minutes = $remainder / 60"
    let "timer_seconds = $remainder % 60"
    print -P "%B%F{red}>>> elapsed time ${timer_hours}h${timer_minutes}m${timer_seconds}s%b"
  elif [[ $timer_result -ge 60 ]]; then
    let "timer_minutes = $timer_result / 60"
    let "timer_seconds = $timer_result % 60"
    print -P "%B%F{yellow}>>> elapsed time ${timer_minutes}m${timer_seconds}s%b"
  elif [[ $timer_result -gt 10 ]]; then
    print -P "%B%F{green}>>> elapsed time ${timer_result}s%b"
  fi
}

function _prompt_musicx_precmd {
  timer_result=$(($SECONDS-$_start_time))
  if [[ $timer_result -gt 10 ]]; then
    _calc_elapsed_time
  fi
  _start_time=$SECONDS
}


# Load required functions.
autoload -Uz add-zsh-hook

# Add hook for calling git-info before each command.
add-zsh-hook precmd _prompt_musicx_precmd
add-zsh-hook preexec _prompt_musicx_preexec


# Makes a directory and changes to it.
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
  builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pushes an entry onto the directory stack and lists its contents.
function pushdls {
  builtin pushd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pops an entry off the directory stack and lists its contents.
function popdls {
  builtin popd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Prints columns 1 2 3 ... n.
function slit {
  awk "{ print ${(j:,:):-\$${^@}} }"
}

# Displays user owned processes status.
function psu {
  ps -U "${1:-$LOGNAME}" -o 'pid,%cpu,%mem,command' "${(@)argv[2,-1]}"
}

# visual studio code. a la `subl`
code () {
	if [[ $# = 0 ]]
	then
		open -a "Visual Studio Code"
	else
		[[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
		open -a "Visual Studio Code" --args "$F"
	fi
}

use_conda () {
    export PATH=/Users/mingxian/Conda3/bin:$PATH
}
