# Check If php-imagick Has Been Installed

if [ -f /home/vagrant/.php-gmp ]
then
   echo "php-gmp already installed."
   exit 0
fi

touch /home/vagrant/.php-gmp


sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confdef" -y install php7.0-gmp

service php7.0-fpm restart
service nginx restart
