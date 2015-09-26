#!/bin/sh
HOME_DIR=/home/bench_logs
TIME=`date '+%R'`

mkdir -p $HOME_DIR/log_$TIME/nginx
mkdir -p $HOME_DIR/log_$TIME/apache
mkdir -p $HOME_DIR/log_$TIME/mysql


##  nginx  ##
mv /var/log/nginx/access.log $HOME_DIR/log_$TIME/nginx
mv /var/log/nginx/error.log $HOME_DIR/log_$TIME/nginx
touch /var/log/nginx/access.log
touch /var/log/nginx/error.log
chmod 777 /var/log/nginx/access.log
chmod 777 /var/log/nginx/error.log


##  apache  ##
# mv /var/log/httpd/access.log $HOME_DIR/log_$TIME/apache
# mv /var/log/httpd/error.log $HOME_DIR/log_$TIME/apache
# touch /var/log/httpd/access.log
# touch /var/log/httpd/error.log
# chmod 777 /var/log/httpd/access.log
# chmod 777 /var/log/httpd/error.log


##  mysqld  ##
mv /var/log/mysqld.log $HOME_DIR/log_$TIME/mysql
mv /var/log/mysql-slow.log $HOME_DIR/log_$TIME/mysql
touch /var/log/mysqld.log
touch /var/log/mysql-slow.log
chmod 777 /var/log/mysqld.log
chmod 777 /var/log/mysql-slow.log


