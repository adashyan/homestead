##!/usr/bin/env bash
## Check If php-mongo Has Been Installed
#
#if [ -f /home/vagrant/.php-mongo ]
#then
#   echo "php-mongo already installed."
#   exit 0
#fi
#
#touch /home/vagrant/.php-mongo
#
#echo "Installing php mongodb driver"
#yes no | sudo pecl install mongo

#touch /etc/php5/mods-available/mongo.ini
#echo "extension=mongo.so" > /etc/php5/mods-available/mongo.ini
#
#ln -sf /etc/php5/mods-available/mongo.ini /etc/php5/fpm/conf.d/20-mongo.ini
#ln -sf /etc/php5/mods-available/mongo.ini /etc/php5/cli/conf.d/20-mongo.ini
#
#sudo /etc/init.d/php5-fpm restart
#sudo /etc/init.d/nginx restart