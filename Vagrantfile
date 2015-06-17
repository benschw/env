# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'fileutils'

VAGRANTFILE_API_VERSION = "2"

CLOUD_CONFIG_PATH = File.join(File.dirname(__FILE__), "user-data")


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false

  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.box = "trusty64"


  config.vm.define "node1" do |node1|
    kube.vm.provision :shell, :path => "./bootstrap.sh"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "172.20.20.10"
  end


  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

end
