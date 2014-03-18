# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  config.vm.provider :virtualbox do |vb, override|
	vb.customize ["modifyvm", :id, "--memory", 2048,  "--cpus", "2"]

	override.vm.hostname = "mesos"
	private_ip = "192.168.33.10"
	override.vm.network :private_network, ip: private_ip
	override.vm.provision :hosts do |provisioner|
		provisioner.add_host private_ip , [ config.vm.hostname ]
	end
    override.vm.network :forwarded_port, guest: 5050, host: 5050
  end
  
  config.vm.provision 'shell', path: 'provision.sh'
  
end
