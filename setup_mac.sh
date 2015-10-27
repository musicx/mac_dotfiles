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

brew tap homebrew/dupes
brew tap homebrew/science
brew tap homebrew/versions

brew install wget

brew install vim --override-system-vi
brew install macvim --override-system-vim --custom-system-icons
brew install make
brew install nano

brew install git
brew install subversion
brew install less
brew install openssh --with-brewed-openssl
#brew install perl518   # must run "brew tap homebrew/versions" first!
brew install python --with-brewed-openssl
brew install rsync
brew install svn
brew install unzip
brew install emacs

brew install coreutils
brew install binutils
brew install diffutils
brew install ed --with-default-names
brew install findutils --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls --with-default-names
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install htop-osx

brew install cmake
brew install automake

brew install gcc --without-multilib
brew install boost --with-python
brew install clang-omp
brew install vowpal-wabbit

brew install sbt
brew install scala
brew install apache-spark
brew install go
brew install node
brew install mongodb
brew install postgresql
brew install pyqt
brew install ag

brew install gdb
brew install gpatch
brew install m4
brew install file-formula
brew install hadoop
brew install hbase
brew install hive
