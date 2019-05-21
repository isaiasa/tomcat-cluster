
Vagrant.configure(2) do |config|
 
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 9080, host: 9080
  
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.network "forwarded_port", guest: 45564, host: 45564
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  


  config.vm.network "private_network", ip: "192.168.33.11"
  
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end

  config.vm.provision :shell, path: "scripts/local_provision.sh"
  
end
