# MACOSX
# gpu env setting 
#export PATH=/usr/local/cuda/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH
#export DYLD_LIBRARY_PATH=$HOME/Work/Python/downloaded/cuDNN:$DYLD_LIBRARY_PATH

# dev tools
#export C_INCLUDE_PATH=/usr/local/opt/curl/include
#export CPLUS_INCLUDE_PATH=/usr/local/opt/curl/include
export JAVA_HOME=$(/usr/libexec/java_home --version 1.8)

alias mdplus='open ~/Work/Languages/js/packages/markdown-plus/index.zh_CN.html'
alias mdses='(export PORT=5000 && node ~/Work/Languages/js/packages/stackedit/server.js) &'
alias mdse='open -a "Safari" "http://localhost:5000/"'


# go env setting
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
#launchctl setenv GOROOT $GOROOT
#launchctl setenv GOPATH $GOPATH

# 搬homebrew源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
#export HOMEBREW_GITHUB_API_TOKEN=41956570e882903dadb4d10eac4d613035c70bd6

# software env settings
#export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:/usr/local/opt/curl/lib/pkgconfig
#export HIVE_HOME=/usr/local/Cellar/hive/1.1.1/libexec
#export THEANO_FLAGS=device=gpu
#export PYLEARN2_DATA_PATH=$HOME/Work/Python/PyLearn2/data
export AUTOJUMP_IGNORE_CASE=1
export CHEATCOLORS=true

# Python
export PYTHONIOENCODING="utf8"
export PYENV=$HOME/Code/Python/virtual

#eval $(docker-machine env default)

