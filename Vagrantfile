# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :"lrtimelapse" do |box|
  box.vm.box = "osx109"
    box.vm.hostname = "lrtimelapse"

#    box.vm.provision "shell", path: "scripts/install-xcode-command-line-tools.sh", privileged: false
#    box.vm.provision "shell", path: "scripts/install-homebrew.sh", privileged: false
#    box.vm.provision "shell", path: "scripts/install-caskroom.sh", privileged: false
    box.vm.provision "shell", path: "scripts/set-german.sh", privileged: false
    box.vm.provision "shell", path: "scripts/disable-screenblanker.sh", privileged: false
    box.vm.provision "shell", path: "scripts/install-adobe-lightroom.sh", privileged: false
    box.vm.provision "shell", path: "scripts/install-lrtimelapse.sh", privileged: false

    box.vm.provider "vmware_fusion" do |v|
      v.gui = true
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
  end
end
