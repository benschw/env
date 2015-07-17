### Install
#### ssh keys

wget -qO- https://github.com/benschw/env/raw/master/ssh.tar.gz.gpg | gpg | tar xz -C ~/
mv ~/ssh ~/.ssh


#### vagrant / virtualbox

	sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" 
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - 
	sudo aptitude update 
	sudo aptitude install -y virtualbox-4.3 dkms


#### desktop

http://www.fandigital.com/p/zoncolor.html

    sudo add-apt-repository ppa:noobslab/themes
    sudo apt-get update
    sudo apt-get install azure-gtk-theme
    
    sudo add-apt-repository ppa:snwh/pulp
    sudo apt-get update
    sudo apt-get install paper-icon-theme paper-gtk-theme
    
