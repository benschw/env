### Install

#### vagrant / virtualbox

	sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" 
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - 
	sudo aptitude update 
	sudo aptitude install -y virtualbox-4.3 dkms

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
	
