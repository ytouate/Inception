#!/bin/bash

sleep 3
cd /home/ytouate/data/wordpress && \
wp core install --url=$WORDPRESS_DOMAIN_NAME --title=$WORDPRESS_DB_USER --admin_user=$WORDPRESS_DB_USER \
--admin_password=$WORDPRESS_DB_PASSWORD --admin_email=$WORDPRESS_USER_EMAIL --skip-email && \
wp user create ilefhail ilefhail@gmail.com --user_pass=$WORDPRESS_DB_PASSWORD && \
cd /etc/php81/php-fpm.d  && \
sed -i 's/listen = 127.0.0.1:9000/listen = wordpress:9000/g' www.conf && \
cd /


exec $@