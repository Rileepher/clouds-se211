#!/bin/sh

yum install -y /mnt/usb/downloadrpms/*
unzip /mnt/usb/webpackets.zip -d /var/www/html
systemctl stop firewalld
setenforce 0
systemctl restart httpd mariadb
mysql_secure_installation<<EOF

Y
qqqqqq
qqqqqq
n
n
n
Y
EOF

chmod 777 /var/www/html/nibbleblog/content
chmod 777 /var/www/html/oscommerce2/catalog/includes/configure.php
chmod 777 /var/www/html/oscommerce2/catalog/admin/includes/configure.php
nmcli
