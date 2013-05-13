# -*- mode: ruby -*-
# vi: set ft=ruby :

$gnu_radio_bootstrap = <<SCRIPT
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential git subversion
wget http://www.sbrac.org/files/build-gnuradio && chmod a+x ./build-gnuradio && ./build-gnuradio
echo "export PYTHONPATH=/usr/local/lib/python2.7/dist-packages" >> ~/.bashrc
SCRIPT

Vagrant.configure('2') do |config|
    config.vm.box = 'precise32'
    config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

    config.vm.provider 'virtualbox' do |v|
        v.customize ['modifyvm', :id, '--usb', 'on']
        v.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'rtl2832u', '--vendorid', '0x0bda']
    end

    config.vm.provision :chef_solo do |chef|
        chef.add_recipe "gnuradio"
    end
end
