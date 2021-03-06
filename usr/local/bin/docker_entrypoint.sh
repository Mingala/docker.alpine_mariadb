#!/bin/ash
# setup MariaDB if no mysql database found
if [ ! -d "$MYSQL_DATABASE/mysql" ]; then
	/usr/bin/mysql_install_db --user=mysql --datadir=$MYSQL_DATABASE --skip-auth-anonymous-user
fi
# run mysql database
/usr/bin/mysqld_safe --defaults-extra-file=$MYSQL_EXTRA/my.cnf --user=mysql --datadir=$MYSQL_DATABASE
