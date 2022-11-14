#!/usr/bin/env sh

touch /var/log/nginx/access.log
touch /var/log/nginx/error.log
touch /var/log/nginx/rtmp.log
mkdir -p /srv/www/live
/usr/sbin/nginx
tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log -f /var/log/nginx/rtmp.log
