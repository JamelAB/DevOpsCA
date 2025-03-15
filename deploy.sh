#!/bin/bash
sudo apt update && sudo apt install nodejs npm

# Install PM2
sudo npm install -g pm2

# Stop any running instance of the app
pm2 stop simple_app

# Move into the application directory folder
cd DevOpsCA/

# Install appdependencies
npm install

# Start the application using PM2
pm2 start ./bin/www --name simple_app