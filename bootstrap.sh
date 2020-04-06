#Update Packages
apt-get update
#Upgrade Packages
apt-get Upgrade
#Install Git
apt-get install -y git
#Apache && PHP5 for Ubuntu14.04
apt-get install apache2 php5 libapache2-mod-php5 apache2-mpm-itk libapache2-mod-rpaf php-pear php5-gd 
php5-mysql php5-common  php5-curl php5-cli apache2.2-common php5-xdebug

#Set MySQL User & Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
#Install MySQL
apt-get install -y mysql-server

#Restart Apache
sudo service apache2 restart
#Naming Hostname
sudo -i
echo "vagrant-apache" > /etc/hostname
sudo reboot