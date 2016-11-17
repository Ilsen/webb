#!/bin/bash

mkdir /home/box/web/public/img/ -p
mkdir /home/box/web/public/css
mkdir /home/box/web/public/js
mkdir /home/box/web/uploads
mkdir /home/box/web/etc
apt-get install nginx
rm /etc/nginx/sites-enabled/default
cp nginx.conf /home/box/web/etc/
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
service nginx restart
