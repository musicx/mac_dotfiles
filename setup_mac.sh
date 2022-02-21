#!/bin/sh
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

brew install bash zsh tmux

#brew tap homebrew/dupes
#brew tap homebrew/science
#brew tap homebrew/versions

brew install wget

#brew install vim --override-system-vi
brew install macvim --cask
brew install make
#brew install nano

#brew install git
#brew install subversion
brew install less
#brew install openssh --with-brewed-openssl
#brew install perl518   # must run "brew tap homebrew/versions" first!
#brew install python --with-brewed-openssl
#brew install python3 --with-brewed-openssl
#brew install rsync
#brew install svn
brew install unzip
#brew install emacs

brew install coreutils
brew install binutils
brew install diffutils
brew install ed
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install grep
brew install gzip
#brew install screen
brew install watch
#brew install wdiff --with-gettext
brew install htop-osx

brew install cmake
brew install automake

brew install gcc
brew install boost

#brew install sbt
#brew install scala
#brew install go
brew install maven
#brew install mongodb
#brew install postgresql
#brew install pyqt
#brew install node
brew install ag

#brew install gdb
#brew install gpatch
#brew install m4
#brew install file-formula
#brew install hadoop
#brew install hbase
#brew install hive
#brew install apache-spark
