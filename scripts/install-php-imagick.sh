# Check If php-imagick Has Been Installed

if [ -f /home/vagrant/.php-imagick ]
then
   echo "php-imagick already installed."
   exit 0
fi

touch /home/vagrant/.php-imagick


sudo apt-get update -y
sudo apt-get install php7.0-imagick -y

service php7.0-fpm restart
service nginx restart
