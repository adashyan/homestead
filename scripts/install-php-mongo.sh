#!/usr/bin/env bash
# Check If php-redis Has Been Installed

if [ -f /home/vagrant/.php-mongo ]
then
   echo "php-mongo already installed."
   exit 0
fi

touch /home/vagrant/.php-mongo

sudo pecl install mongo


extension=mongo.so

touch /etc/php5/mods-available/mongo.ini
echo "extension=mongo.so" > /etc/php5/mods-available/mongo.ini

ln -sf /etc/php5/mods-available/redis.ini /etc/php5/fpm/conf.d/20-mongo.ini
ln -sf /etc/php5/mods-available/redis.ini /etc/php5/cli/conf.d/20-mongo.ini

service php5-fpm restart