#!/bin/zsh
#this script is install ruby 
if [ "`id | grep root`" = ""];then
	echo "pleas login root"
	exit 1
fi
#YAML
cd ~/
wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
tar zxfv yaml-0.1.4.tar.gz
cd yaml-0.1.4
./configure
make
make install

#rubyinstall
cd ~/
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.bz2
tar zxfv ruby-1.9.3-p392.tar.bz2
cd ruby-1.9.3-p392
./configure
make
make install

#sqlite3
pacman -Sy sqlite3

#railsinstall
cd ~/
gem install rails
echo "finish"
exit 0

