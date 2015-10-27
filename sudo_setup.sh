#!/bin/bash
sudo apt-get install tmux zsh git vim openjdk-7-jdk sendmail mailutils gcc g++ make maven cmake
sudo sed -i 's/^DS/DSatom.corp.ebay.com' /etc/mail/sendmail.cf
sudo service sendmail restart
sudo ln -s /usr/lib/jvm/java-7-openjdk-amd64 /usr/lib/jvm/jdk

mkdir -p $HOME/package
cd $HOME/package
#wget http://www.trieuvan.com/apache/hadoop/common/hadoop-2.2.0/hadoop-2.2.0.tar.gz
wget http://www.trieuvan.com/apache/hadoop/common/hadoop-2.2.0/hadoop-2.2.0-src.tar.gz
#wget http://d3kbcqa49mib13.cloudfront.net/spark-0.9.1-bin-hadoop2.tgz
wget http://d3kbcqa49mib13.cloudfront.net/spark-0.9.1.tgz
wget http://repo.continuum.io/miniconda/Miniconda-3.4.2-Linux-x86_64.sh
wget http://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz

