# VagrantLaravelBox
Vagrant script for an Ubuntu 18.04 (LTS) box with Laravel  
webserver-port: 8080  
SSH-port: 2222  
mysql: root / root

# Usage (on Ubuntu 18.04)
1. Install composer  
sudo apt-get install composer -y

2. Install virtualBox  
sudo apt-get install virtualbox -y

3. Install Vagrant  
sudo apt-get install vagrant -y

4. Goto desired directory and clone repository  
git clone https://github.com/wildenberg84/VagrantLaravelBox.git vm-name

5. Create and configure VM  
vagrant up

Optional:  
6. Login to VM  
vagrant ssh
