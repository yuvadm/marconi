# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
    config.vm.box = 'precise32'
    config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
    config.ssh.forward_x11 = true

    config.vm.provider 'virtualbox' do |v|
        v.customize ['modifyvm', :id, '--usb', 'on']

        # Audio - Specific to Mac OS X
        v.customize ['modifyvm', :id, '--audio', 'coreaudio']

        # Audio - Specific to Linux
        #v.customize ['modifyvm', :id, '--audio', 'oss']

        v.customize ['modifyvm', :id, '--usbehci', 'on']
        v.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'rtl2832u', '--vendorid', '0x0bda']
    end

    config.vm.provision :chef_solo do |chef|
        chef.add_recipe "gnuradio"
    end
end
