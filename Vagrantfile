# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

	config.vm.box = "ubuntu/trusty64"

	config.vm.network :forwarded_port, guest: 10081, host: 8881, host_ip: "127.0.0.1"
    config.vm.network :forwarded_port, guest: 80, host: 8888, host_ip: "127.0.0.1"

    #config.vm.synced_folder "../../../Downloads/tmp/", "/vagrant_data"

    config.vm.synced_folder "./", "/vagrant",
        id: "vagrant-root",
        owner: "www-data",
        group: "www-data",
        mount_options: ["dmode=775,fmode=775"]

      # Provider-specific configuration
      config.vm.provider "virtualbox" do |v|
      	v.memory = 2048
      end

	config.vm.provision "shell", path: "initialize.bash", run: "always"
	config.vm.provision "shell", path: "reload.bash", run: "always"

	config.vm.post_up_message = "The application is available at http://127.0.0.1:8888"

end