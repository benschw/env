#!/bin/bash


USER=vagrant

useradd $USER -m -s /bin/bash


aptitude update
aptitude install -y \
	curl wget git htop jq tree \
	tmux vim exuberant-ctags \
	php5-cli php5-curl \
	ant make



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


# Setting up User Environment
echo SUing to $USER
su $USER


# git
ln -s /home/$USER/.vim/gitconfig /home/$USER/.gitconfig


# vim
git clone https://github.com/benschw/vim-benschw.git /home/$USER/.vim
cd /home/$USER/.vim
git submodule init
git submodule update
ln -s /home/$USER/.vim/vimrc /home/$USER/

# swp tmp
mkdir /home/$USER/tmp

# ctags config
ln -s /home/$USER/.vim/ctags /homt/$USER/.ctags

# fonts
git clone https://github.com/powerline/fonts.git /tmp/fonts
/tmp/fonts/install.sh
rm -rf /tmp/fonts

# tmux
ln -s /home/$USER/.vim/tmux.conf /home/$USER/.tmux.conf


# bashrc
echo export TERM=xterm-256color >> /home/$USER/.bashrc
echo "[ -n \"\$TMUX\" ] && export TERM=screen-256color" >> /home/$USER/.bashrc
