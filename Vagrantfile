# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.provider "virtualbox" do |v|
        v.memory = 4096
    end

    config.vm.box = "scotch/box"
    config.vm.network "public_network"
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder "/Users/jwinsor/Dropbox/Mills", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    ### Solr/Fedora Port
    config.vm.network "forwarded_port", guest: 8983, host: 8983
    ### Rails Port
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    ### Tomcat Port
    config.vm.network "forwarded_port", guest: 8080, host: 8080



    config.vm.provision :shell, path: "bootstrap.sh"

end
