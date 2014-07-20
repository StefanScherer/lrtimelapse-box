# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :"lrtimelapse" do |box|
  box.vm.box = "osx109"
    box.vm.hostname = "lrtimelapse"

    box.vm.provision "shell", path: "scripts/set-german.sh", privileged: false
    box.vm.provision "shell", path: "scripts/disable-screenblanker.sh", privileged: false
    box.vm.provision "shell", path: "scripts/install-adobe-lightroom.sh", privileged: false
    box.vm.provision "shell", path: "scripts/install-lrtimelapse.sh", privileged: false

    box.vm.provider "vmware_fusion" do |v|
      v.gui = true
      v.vmx["memsize"] = "2596"
      v.vmx["numvcpus"] = "4"
    end
  end
end
