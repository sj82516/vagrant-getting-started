#!/usr/bin/env bash
cd /home/vagrant/server
source ~/.nvm/nvm.sh
rm -rf node_modules
npm install
pm2 start index.js