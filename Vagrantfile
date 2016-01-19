# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/trusty64.box"

  # host name
  config.vm.host_name = "jekyll-development-machine"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    vb.gui = false

    # Set the name that appears in the VirtualBox GUI
    vb.name = "Jekyll Development Machine"

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "3072","--cpus", "4"]
  end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # webapps
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # After destroying virtual machines the folder contains the machines application
  # files.
  config.vm.synced_folder "aptcache", "/var/cache/apt/archives/"

  # websites
  config.vm.synced_folder "../catalog-website", "/srv/catalog-website", :mount_options => ["uid=33", "dmode=777", "fmode=777"]
  config.vm.synced_folder "../corporate-website", "/srv/corporate-website", :mount_options => ["uid=33", "dmode=777", "fmode=777"]

  # rendered pages
  config.vm.synced_folder "pages", "/tmp/jekyll-pages", :mount_options => ["uid=33", "dmode=777", "fmode=777"]

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  config.vm.provision :chef_solo do |chef|
    # Loglevel Debug: useful to debug cookbooks. Hat-Tip to @klimpong
    #chef.log_level = :debug

    # path to cookbooks
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe "jekyll"
  end
end
