### Install
#### ssh keys

wget -qO- https://github.com/benschw/env/raw/master/ssh.tar.gz.gpg | gpg | tar xz -C ~/
mv ~/ssh ~/.ssh


#### vagrant / virtualbox

	sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" 
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - 
	sudo aptitude update 
	sudo aptitude install -y virtualbox-4.3 dkms

