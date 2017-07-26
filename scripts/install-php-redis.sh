# Check If php-redis Has Been Installed

if [ -f /home/vagrant/.php-redis ]
then
   echo "php-redis already installed."
   exit 0
fi

touch /home/vagrant/.php-redis

cd /tmp
curl -O https://github.com/phpredis/phpredis/archive/3.1.3.tar.gz
tar zxf 3.1.3.tar.gz phpredis-3.1.3
cd phpredis-3.1.3
phpize
./configure
make
sudo make install
cd ..
rm -rf phpredis

touch /etc/php/7.0/mods-available/redis.ini

echo "extension=redis.so" > /etc/php/7.0/mods-available/redis.ini

ln -sf /etc/php/7.0/mods-available/redis.ini /etc/php/7.0/fpm/conf.d/20-redis.ini
ln -sf /etc/php/7.0/mods-available/redis.ini /etc/php/7.0/cli/conf.d/20-redis.ini

service php7.0-fpm restart