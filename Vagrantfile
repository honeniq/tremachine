# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # config for plugins
  config.omnibus.chef_version = :latest

  config.vm.box = "chef/ubuntu-14.04"
  config.vm.hostname = "tremachine"

  config.vm.network :forwarded_port, guest: 6633, host: 6633

  config.vm.synced_folder "./" , "/home/vagrant/trema"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]
    chef.roles_path = "./roles"
    chef.data_bags_path = "./data_bags"
    
    chef.add_recipe "apt"
    chef.add_recipe "trema"
  end

  config.vm.provision :serverspec do |spec|
    spec.pattern = 'spec/default/*_spec.rb'
  end
end
