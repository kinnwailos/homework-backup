Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  # Base VM for homework tasks
  config.vm.define "hw-main" do |main|
    main.vm.hostname = "hw-main"
    main.vm.network "private_network", ip: "192.168.56.10"

    main.vm.provider "virtualbox" do |vb|
      vb.name = "hw-main"
      vb.memory = 2048
      vb.cpus = 2
    end
  end

  # Clone VM with a different IP address
  config.vm.define "hw-clone" do |clone|
    clone.vm.hostname = "hw-clone"
    clone.vm.network "private_network", ip: "192.168.56.11"

    clone.vm.provider "virtualbox" do |vb|
      vb.name = "hw-clone"
      vb.memory = 2048
      vb.cpus = 2
    end
  end
end
