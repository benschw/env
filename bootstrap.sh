#!/bin/bash


USER=vagrant

useradd $USER -m -s /bin/bash


aptitude update
aptitude install -y curl wget git tmux vim htop jq tree make php5-cli php5-curl


# docker
echo Installing Docker
wget -qO- https://get.docker.com/ | sh
usermod -aG docker $USER
service docker restart
#newgrp docker


# php
echo Installing Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer


echo SUing to $USER
su $USER


# git
git config --global user.email "benschw@gmail.com"
git config --global user.name "Ben Schwartz"
git config --global push.default simple


# vim
git clone https://github.com/benschw/vim-benschw.git /home/$USER/.vim
cd /home/$USER/.vim
git submodule init
git submodule update
ln -s /home/$USER/.vim/vimrc /home/$USER/


# tmux
ln -s /home/$USER/.vim/tmux.conf /home/$USER/.tmux.conf


# bashrc
echo export TERM=xterm-256color >> /home/$USER/.bashrc
echo "[ -n \"\$TMUX\" ] && export TERM=screen-256color" >> /home/$USER/.bashrc
