# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  

  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "node01" do |node01|

    node01.vm.box = "hashicorp/bionic64"
    node01.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--macaddress1', '080027000051']
      v.customize ['modifyvm', :id, '--natnet1', '10.0.51.0/24']
    end

    node01.vm.provision :shell, path: "bootstrap_node01.sh"
    node01.vm.hostname = "node01"
    node01.vm.network "public_network", ip: "192.168.1.51"
  end

  config.vm.define "node02" do |node02|

    node02.vm.box = "hashicorp/bionic64"
    node02.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--macaddress1', '080027000052']
      v.customize ['modifyvm', :id, '--natnet1', '10.0.51.0/24']
    end

    node02.vm.provision :shell, path: "bootstrap_node02.sh"
    node02.vm.hostname = "node02"
    node02.vm.network "public_network", ip: "192.168.1.52"
  end
end
