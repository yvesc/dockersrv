# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	
	config.vm.define :dockersrv do |dockersrv|

		dockersrv.vm.box = "trusty-amd64"
		dockersrv.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

		dockersrv.vm.network :forwarded_port, guest: 8080, host: 18080 
		dockersrv.vm.network :forwarded_port, guest: 9000, host: 19000
		dockersrv.vm.network :forwarded_port, guest: 8069, host: 8069

		dockersrv.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", "1024"]
			vb.customize ["modifyvm", :id, "--vram", "128"]
			vb.customize ["modifyvm", :id, "--cpus", "2"]
		end


		dockersrv.vm.provision :shell do |opshell|
			opshell.path = "opscript.sh"
		end

	end

end
