#!/usr/local/bin/zsh
sudo /bin/chmod -a "everyone deny add_file,delete,add_subdirectory,delete_child,writeattr,writeextattr,chown" *
sudo xattr -d com.apple.metadata:_kTimeMachineOldestSnapshot *
sudo xattr -d com.apple.metadata:_kTimeMachineNewestSnapshot *
sudo xattr -d com.apple.finder.copy.source.checksum#N *
sudo /bin/chmod -a "everyone deny write,delete,append,writeattr,writeextattr,chown" **/*.*
sudo xattr -d com.apple.metadata:_kTimeMachineOldestSnapshot **/*.*
sudo xattr -d com.apple.metadata:_kTimeMachineNewestSnapshot **/*.*
sudo xattr -d com.apple.finder.copy.source.checksum#N **/*.*
sudo /bin/chmod -a "everyone deny add_file,delete,add_subdirectory,delete_child,writeattr,writeextattr,chown" **/*
sudo xattr -d com.apple.metadata:_kTimeMachineOldestSnapshot **/*
sudo xattr -d com.apple.metadata:_kTimeMachineNewestSnapshot **/*
sudo xattr -d com.apple.finder.copy.source.checksum#N **/*
# /bin/ls -leR .
