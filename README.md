# magento2-varnish-redis-ssl-docker

docker-compose with magento2 + apache2 (webserver) + varnish (cache) + mysql + phpmyadmin + redis (cache) + nginx (reverse proxy for ssl support) + db backup script (production environment)

# how to use

1. git clone git@github.com:rwsdigital/magento2-varnish-redis-ssl-docker.git
2. IMPORTANT: change passwords to following files:
	1. FTP User Password -> ./apache2_server/supervisord.conf (TEXT TO CHANGE: "PUT_YOUR_FTP_PASSWORD_THERE")
	2. Magento2 Composer Authentication Key -> ./apache2_server/auth.json
	3. DB Backup Script -> ./backups/backup.sh (TEXT TO CHANGE: "rootpassword123")
	4. MySql Credentials -> ./mysql_server/mysql.sh (SET ALL THE INFORMATIONS ABOUT MAGENTO DATABASE AND MYSQL ROOT PASSWORD)
	5. Set MySql Root Password in docker-compose File -> ./docker-compose.yml (TEXT TO CHANGE: "rootpassword123")
3. put your magento2 root in  ./magento2 folder (FOLLOW ALL THE OFFICIAL INSTRUCTIONS TO CONFIGURE MAGENTO2 BEFORE STARTING THE DOCKER ENVIRONMENT)
4. docker-compose up