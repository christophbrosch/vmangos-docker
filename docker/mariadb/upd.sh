mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "create user 'mangos'@'%' identified by 'mangos';"

mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "create database characters;"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "create database logs;"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "create database mangos;"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "create database realmd;"

mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "grant all privileges on characters.* to 'mangos'@'%';"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "grant all privileges on logs.* to 'mangos'@'%';"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "grant all privileges on mangos.* to 'mangos'@'%';"
mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "grant all privileges on realmd.* to 'mangos'@'%';"

mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -e  "flush privileges;"


