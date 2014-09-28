#!/bin/sh
set -x
set -e
cd $(dirname $0)

myuser=root
mydb=isu4_qualifier
myhost=127.0.0.1
myport=3306
mysql -h ${myhost} -P ${myport} -u ${myuser} -e "DROP DATABASE IF EXISTS ${mydb}; CREATE DATABASE ${mydb}"
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < /home/isucon/sql/schema.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < /home/isucon/sql/dummy_users.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < /home/isucon/sql/dummy_log.sql

mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < /home/isucon/webapp/ruby/config/init.sql

cd /home/isucon/webapp/ruby/
bundle exec ruby init.rb
