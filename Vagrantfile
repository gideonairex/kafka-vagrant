# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"
  config.ssh.forward_agent = true
  config.vm.provision "shell", path: "scripts/init.sh"

  # configure zookeeper cluster
  (1..3).each do |i|
    config.vm.define "zookeeper#{i}" do |s|
      s.vm.hostname = "zookeeper#{i}"
			s.vm.network "private_network", ip: "10.30.3.#{i+1}"
			s.vm.provision "shell", path: "scripts/zookeeper.sh", args:"#{i}", privileged: "false"
    end
  end

	(1..3).each do |i|
		config.vm.define "broker#{i}" do |s|
			s.vm.hostname = "broker#{i}"
			s.vm.network "private_network", ip: "10.30.3.#{4-i}0"
			s.vm.provision "shell", path: "scripts/broker.sh", args:"#{i}", privileged: "false"
		end
	end

  config.vm.provider "virtualbox" do |v|
    v.gui = false
		v.cpus = 1
		v.memory = 512
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end
end

