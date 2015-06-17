### Install
#### env

	sudo aptitude install git tmux vim htop jq tree make

	wget -qO- https://get.docker.com/ | sh
	sudo usermod -aG docker ben
	sudo service docker restart
	newgrp docker

	sudo aptitude install php5-cli php5-curl
	curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer

	# tmux
	ln -s ~/.vim/tmux.conf ~/.tmux.conf

	# git
	git config --global user.email "benschw@gmail.com"
	git config --global user.name "Ben Schwartz"
	git config --global push.default simple

#### vim

	git clone https://github.com/benschw/vim-benschw.git ~/.vim
	cd ~/.vim
	git submodule init
	git submodule update
	ln -s ~/.vim/vimrc ~/.vimrc
	
	# https://github.com/m2mdas/phpcomplete-extended
	cd bundle/vimproc.vim
	make


	# in vim
	:GoInstallBinaries

### Colors

	#.bashrc
	export TERM=xterm-256color
	[ -n "$TMUX" ] && export TERM=screen-256color

	# .tmux.conf
	set -g default-terminal "screen-256color"

	
### special fonts

	git clone https://github.com/powerline/fonts.git
	cd fonts
	./install.sh

	# update terminal font too

### CTags

	apt-get install exuberant-ctags
	ln -s ~/.vim/ctags ~/.ctags

	# usage
	ctags .

### Key Bindings
#### General


	\q                - quick notes
	
	\\                - toggle NerdTree file browser
	\<ENTER>          - disable highlighting
	\r                - toggle relative / absolute line numbers

	\f                - CtrlP
	\.                - CtrlPTag
	\w                - buffer explorer
	\]                - next buffer
	\[                - previous buffer

#### Go
	
	\b                - go-build
	\t                - go-test
	
