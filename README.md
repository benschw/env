### Install
#### ssh keys

curl https://github.com/benschw/env/raw/master/ssh.tar.gz.gpg | gpg | tar xzvf -C ~/
mv ~/ssh ~/.ssh


#### vagrant / virtualbox

	sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" 
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - 
	sudo aptitude update 
	sudo aptitude install -y virtualbox-4.3 dkms

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
	
