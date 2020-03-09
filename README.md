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

5. cd into vm-name folder and create and configure VM  
cd vm-name  
vagrant up

Optional:  
6. Setup SSH  
  -copy id_rsa.pub (default location ~/.ssh/) from host to synced vagrant folder  
  -login to VM (vagrant ssh)  
  -cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys  
