#!/bin/bash

sleep 3
cd /home/ytouate/data/wordpress && \
wp core install --url=ytouate --title=my_site --admin_user=ytouate --admin_password=pass --admin_email=touateyoussef2003@gmail.com --skip-email && \
cd /etc/php81/php-fpm.d  && \
sed -i 's/listen = 127.0.0.1:9000/listen = wordpress:9000/g' www.conf && \
cd /


exec $@