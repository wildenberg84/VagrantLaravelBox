# VagrantLaravelBox (dev)
Vagrant script for an Ubuntu 18.04 (LTS) box with Laravel  
  
synched directory: /vagrant (synchronizes with 'vm-name' directory)  
webserver-port: 8080  
webroot: /vagrant/www-root  
SSH-port: 2222  
SSH credentials: vagrant / vagrant  
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

5. cd into vm-name folder and create and configure VM  
cd vm-name  
vagrant up
  
 # Note:
 Should be installed under Linux FS or it may fail running certain commands.
