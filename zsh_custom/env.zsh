# MACOSX
export PATH=/usr/local/cuda/bin:$PATH
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH
#export C_INCLUDE_PATH=/usr/local/opt/curl/include
#export CPLUS_INCLUDE_PATH=/usr/local/opt/curl/include
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:/usr/local/opt/curl/lib/pkgconfig
export HOMEBREW_GITHUB_API_TOKEN=ba6bed0763b6fc9deb9e5067d0ad8fa07d9c92d4
export JAVA_HOME=$(/usr/libexec/java_home)
#export THEANO_FLAGS=device=gpu
#export PYLEARN2_DATA_PATH=$HOME/Work/Python/PyLearn2/data
export AUTOJUMP_IGNORE_CASE=1
export DYLD_LIBRARY_PATH=$HOME/Work/Python/downloaded/cuDNN:$DYLD_LIBRARY_PATH
export HIVE_HOME=/usr/local/Cellar/hive/1.1.1/libexec
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/yijiliu/.go
launchctl setenv GOROOT $GOROOT
launchctl setenv GOPATH $GOPATH
# 搬homebrew源
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

export ACCESS_ID=HEHOg63XxQzeALUi
export ACCESS_KEY=9fp7eVvMELXX67eY9vFqlY16o2ycS6



# c3 servers
#export JAVA_HOME=/usr/lib/jvm/jdk/
#export HADOOP_HOME=$HOME/opt/hadoop-2.2.0
#export PATH="$HOME/anaconda/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HOME/.dotfiles/bin:$HOME/bin:$PATH"
#export HADOOP_MAPRED_HOME=$HADOOP_HOME
#export HADOOP_COMMON_HOME=$HADOOP_HOME
#export HADOOP_HDFS_HOME=$HADOOP_HOME
#export YARN_HOME=$HADOOP_HOME
#export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export SPARK_HOME=$HOME/opt/spark-0.9.1
#export SPARK_JAR=$HOME/opt/spark-0.9.1/assembly/target/scala-2.10/spark-assembly-0.9.1-hadoop2.2.0.jar

