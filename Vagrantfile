Vagrant.configure("2") do |config|
  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/trusty64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
    acs.vm.provision "shell", path: "acs/environment/provision.sh", privileged: false
  end

  config.vm.define "web" do |web|
    web.vm.box = "nrel/CentOS-6.5-x86_64"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.provision "shell", path: "web/environment/provision.sh", privileged: false
  end

  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.30"
    db.vm.provision "shell", path: "db/environment/provision.sh", privileged: false
  end
end
