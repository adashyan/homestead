# Check If custom configs has been applied
if [ -f /home/vagrant/.custom-config ]
then
   echo "custom-config already installed."
   exit 0
fi

touch /home/vagrant/.custom-config

echo "

xdebug.var_display_max_depth = -1
xdebug.var_display_max_children = -1
xdebug.var_display_max_data = -1
" > "/etc/php/7.0/fpm/conf.d/20-xdebug.ini"

echo "

xdebug.profiler_enable=0
xdebug.profiler_enable_trigger = 1;
xdebug.profiler_output_name = cachegrind.out.%p.%t
xdebug.profiler_output_dir = /home/vagrant/Sites/cachegrind
" > "/etc/php/7.0/fpm/conf.d/20-xdebug.ini"