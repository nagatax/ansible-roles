# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  #config.vm.box = "bento/centos-7.1"
  config.vm.box = "ubuntu/bionic64"

  # The settings within config.ssh relate to configuring how Vagrant will access
  # your machine over SSH. As with most Vagrant settings, the defaults are
  # typically fine, but you can fine tune whatever you would like.
  config.ssh.insert_key = false

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  config.vm.define "ansible" do |ansible|
    # hostname setting
    ansible.vm.hostname = "local.ansible"
    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    ansible.vm.network "private_network", ip: "192.168.34.10"

    # Enable provisioning with a shell script. Additional provisioners such as
    # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
    # documentation for more information about their specific syntax and use.
    ansible.vm.provision "shell", inline: <<-SHELL
      #
      # Install ansible
      #
      sudo apt-get update
      sudo apt-get install -y software-properties-common
      sudo apt-add-repository --yes --update ppa:ansible/ansible
      sudo apt-get install -y ansible
    SHELL
  end

  config.vm.define "web" do |web|
    # hostname setting
    web.vm.hostname = "local.web"

    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    web.vm.network "private_network", ip: "192.168.34.50"

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    web.vm.synced_folder "./webapp", "/var/www/html/laravelapp"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    web.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = false

      # Customize the amount of cpus on the VM:
      vb.cpus = "2"

      # Customize the amount of memory on the VM:
      vb.memory = "3072"
    end

    # Enable provisioning with a shell script. Additional provisioners such as
    # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
    # documentation for more information about their specific syntax and use.
    web.vm.provision "shell", inline: <<-SHELL
      # 下記のエラー対応
      #  The error output from the command was:
      #  /sbin/mount.vboxsf: mounting failed with the error: No such device
      #yum -y update kernel
      #yum -y install kernel-devel kernel-headers dkms gcc gcc-c++

      # ubuntu
      sudo apt-get install -y python
    SHELL
  end

end
