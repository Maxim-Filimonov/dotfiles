#!/bin/sh
# install all the prerequisite libraries
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial
# Remove vim
sudo apt-get remove vim vim-runtime gvim
sudo apt-get remove vim-tiny vim-common vim-gui-common
# Install latest vim
cd ~
hg clone https://code.google.com/p/vim/
sudo apt-get install checkinstall
cd vim
./configure --with-features=huge \
              --enable-rubyinterp \
              --enable-pythoninterp \
              --enable-perlinterp \
              --enable-gui=gtk2 --enable-cscope --prefix=/usr \
              --enable-luainterp 
make VIMRUNTIMEDIR=/usr/share/vim/vim73
sudo checkinstall
# Set vim as default editor
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim
