function tmux_init()
{
    tmux new-session -s "main" -d -n "localhost"    # 开启一个会话
    #tmux new-window -n "sas02" "ssh -i ~/.ssh/rae_rsa -p 8012 yijiliu@localhost"
    #tmux new-window -n "edge3" "ssh -i ~/.ssh/rae_rsa -p 8013 yijiliu@localhost"
    #tmux new-window -n "horton" "ssh -i ~/.ssh/rae_rsa -p 8010 yijiliu@localhost"
    tmux -2 attach-session -d           # tmux -2强制启用256color，连接已开启的tmux
}

# 判断是否已有开启的tmux会话，没有则开启
#if which tmux 2>&1 >/dev/null; then
    #test -z "$TMUX" && (tmux attach || tmux_init)
#fi
