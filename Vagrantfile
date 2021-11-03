# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/centos-8"
  # config.vm.box = "ubuntu/focal64"

  # The settings within config.ssh relate to configuring how Vagrant will access
  # your machine over SSH. As with most Vagrant settings, the defaults are
  # typically fine, but you can fine tune whatever you would like.
  config.ssh.insert_key = false

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Setting NFS uid and gid
  # uid:1000(vagrant) / gid:1000(vagrant)
  #config.winnfsd.uid = 1000
  #config.winnfsd.gid = 1000

  config.vm.define "web" do |web|
    # hostname setting
    web.vm.hostname = "local.web"

    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    # web.vm.network "private_network", ip: "192.168.34.50"

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    # (!!注意!!)synced_folderで指定したフォルダ内は、ゲストマシン側で権限を変更できない

    # USE default type
    web.vm.synced_folder "./", "/vagrant", type: "virtualbox"
    # web.vm.synced_folder "./webapp", "/var/www/html", create: true, type:"virtualbox"

    # USE NFS
    # web.vm.synced_folder "./", "/vagrant", type: "nfs"
    # web.vm.synced_folder "./webapp", "/var/www/html", create: true, type:"nfs"

    # USE rsync
    # web.vm.synced_folder "./", "/vagrant", type: "rsync"
    # web.vm.synced_folder "./webapp", "/var/www/html",type: "rsync",
    # rsync__args: ["--verbose", "--archive", "--delete", "-z", "--copy-links"],
    # rsync__exclude: [
    #   ".git/",
    #   "node_modules/",
    #   "./storage/debugbar",
    #   "./storage/framework",
    #   "./storage/logs",
    #   "./vendor",
    # ]

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

    # Provision as vagrant user
    web.vm.provision :vagrant_user, type: "shell", privileged: false, inline: <<-SHELL
      ##### CentOS
      # Install the ansible
      sudo dnf update -y
      sudo dnf install python3 -y
      python3 -m pip install --upgrade --user pip
      pip3 install --user ansible
      # Install applications
      # cd /vagrant && ansible-playbook -i hosts site_common.yml --tags=packages -vvv
      # cd /vagrant && ansible-playbook -i hosts site_web.yml --tags=mysql -vvv

      ##### Ubuntu
      # Install the ansible
      # sudo apt-get update
      # sudo apt-get upgrade -y
      # sudo apt-get install aptitude ansible -y
      # Install applications
      # cd /vagrant && ansible-playbook -i hosts site_common.yml
      # cd /vagrant && ansible-playbook -i hosts site_web.yml --tags=php
    SHELL
  end

end
