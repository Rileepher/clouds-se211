#!/bin/sh

mkdir -p /var/www/html
mv /root/clouds-se211-main/webpackets/* /var/www/html/
yum -y install /root/clouds-se211-main/downloadrpms/*
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

