#!/usr/bin/env bash

if ! [ -x "$(command -v nvm)" ]; then
    sudo apt-get update  
    sudo apt-get -y install build-essential libssl-dev  
    cd /home/vagrant
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    cat <<EOT >> /home/vagrant/.bashrc
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion
EOT

    source ~/.nvm/nvm.sh
    nvm install 12
    npm install -g pm2
fi