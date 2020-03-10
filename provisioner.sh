#!/bin/bash

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-zip -y
sudo apt-get --purge autoremove -y
sudo service php7.0-fpm restart

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install mysql-server mysql-client -y
sudo service mysql start

sudo apt-get install nginx -y
sudo cat > /etc/nginx/sites-available/default <<- EOM
server {
	listen 80 default_server;
	listen [::]:80 default_server ipv6only=on;
	root /vagrant;
	index index.php index.html index.htm;
	server_name server_domain_or_IP;
	location / {
		try_files \$uri \$uri/ /index.php?\$query_string;
	}

	location ~ \.php\$ {
		try_files \$uri /index.php =404;
		fastcgi_split_path_info ^(.+\.php)(/.+)\$;
		fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;
		fastcgi_index index.php;
		fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
		include fastcgi_params;
	}
}
EOM
sudo service nginx restart

sudo apt-get install composer -y
sudo -Hu vagrant composer global require "laravel/installer" && su - vagrant -c "echo \"PATH='~/.composer/vendor/bin:$PATH'\" >> /home/vagrant/.profile" && su - vagrant -c ". ~/.profile"

sudo apt-get update && sudo apt-get --with-new-pkgs upgrade -y
sudo apt autoremove -y
