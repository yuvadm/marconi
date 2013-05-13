include_recipe 'gnuradio::packages'

directory node[:workingdir] do
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

git 'Checkout gnuradio' do
    repository node[:repos][:gnuradio]
    reference 'master'
    action :checkout
    destination node[:workingdir] + '/gnuradio'
    user 'vagrant'
    group 'vagrant'
end

git 'Checkout rtl-sdr' do
    repository node[:repos][:rtlsdr]
    reference 'master'
    action :checkout
    destination node[:workingdir] + '/rtl-sdr'
    user 'vagrant'
    group 'vagrant'
end

git 'Checkout gr-osmosdr' do
    repository node[:repos][:gr_osmosdr]
    reference 'master'
    action :checkout
    destination node[:workingdir] + '/gr-osmosdr'
    user 'vagrant'
    group 'vagrant'
end

