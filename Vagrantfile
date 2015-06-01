# encoding: utf-8

Vagrant.configure('2') do |config|
  config.vm.box     = 'ts-frontend-v02.box'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/2823653/ts-frontend-v02.box'

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provider :virtualbox do |vb|
    vb.customize [ 'modifyvm', :id, '--ioapic', 'on' ]
    vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
    vb.customize [ 'modifyvm', :id, '--memory', '768' ]
    vb.customize [ 'modifyvm', :id, '--natdnshostresolver1', 'on' ]
    vb.customize [ 'modifyvm', :id, '--natdnsproxy1', 'on' ]
  end
end
