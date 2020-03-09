VAGRANTFILE_API_VERSION = "2"
	Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.provider "virtualbox" do |vb|
  		vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
	end

	config.vm.box = "ubuntu/bionic64"
	config.vm.network "forwarded_port", guest: 80, host: 8080
	config.vm.provision "shell", path: "provisioner.sh"
end
