Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    
    config.vm.define "api" do |api|
        api.vm.provision :shell, path: "init.sh", privileged: false
        api.vm.provision "file", source: "server", destination: "/home/vagrant/"
        api.vm.provision :shell, path: "start.sh", privileged: false

        api.vm.synced_folder ".", "/vagrant", 
            id: "sync", 
            type: "rsync", 
            rsync__exclude: [".git/", "server/", "start.sh"]

        api.vm.network "forwarded_port", guest: 3000, host: 8080
    end 

    config.vm.define "db" do |db|
        db.vm.provision :shell, path: "./mongodb/install.sh", privileged: false
    end
end