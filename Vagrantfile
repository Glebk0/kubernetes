Vagrant.configure("2") do |config|

  config.vm.define "kubernetes-master" do |web|
	web.vm.box = "sbeliakou/centos"
	web.vm.box_version = "7.5"
	web.vm.hostname = 'kubernetes-master'
	web.vm.network :private_network, ip: "192.168.1.80"		
	web.vm.provider :virtualbox do |v|
		v.customize ["modifyvm", :id, "--memory", 3048]
		v.customize ["modifyvm", :id, "--name","kubernetes-master"]
	end
  end

  config.vm.define "kubernetes-node" do |app|
	app.vm.box = "sbeliakou/centos"
	app.vm.box_version = "7.5"
	app.vm.hostname = 'kubernetes-node'
	app.vm.network :private_network, ip: "192.168.1.81"

	app.vm.provider :virtualbox do |v|
		v.customize ["modifyvm", :id, "--memory", 2024]
		v.customize ["modifyvm", :id, "--name","kubernetes-node"]
	end
  end
end

