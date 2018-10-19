# magento2-varnish-redis-ssl-docker

docker-compose with magento2 + apache2 (webserver) + varnish (cache) + mysql + phpmyadmin + redis (cache) + nginx (reverse proxy for ssl support) + db backup script (production environment) + portainer (Simple management UI for Docker)

# how to use

1. git clone https://github.com/rwsdigital/magento2-varnish-redis-ssl-docker
2. **IMPORTANT:** change passwords to following files:
	1. FTP User Password -> ./apache2_server/supervisord.conf (TEXT TO CHANGE: "PUT_YOUR_FTP_PASSWORD_THERE")
	2. Magento2 Composer Authentication Key -> ./apache2_server/auth.json
	3. DB Backup Script -> ./backups/backup.sh (TEXT TO CHANGE: "rootpassword123")
	4. MySql Credentials -> ./mysql_server/mysql.sh (SET ALL THE INFORMATIONS ABOUT MAGENTO DATABASE AND MYSQL ROOT PASSWORD)
	5. Nginx server_name -> ./nginx_server/default (TEXT TO CHANGE: "CHANGE_ME")
	6. Set MySql Root Password in docker-compose File -> ./docker-compose.yml (TEXT TO CHANGE: "rootpassword123")
3. put your magento2 root in  ./magento2 folder (FOLLOW ALL THE OFFICIAL INSTRUCTIONS TO CONFIGURE MAGENTO2 BEFORE STARTING THE DOCKER ENVIRONMENT) (https://magento.com/tech-resources/download or git clone https://github.com/magento/magento2.git)
4. docker-compose up

# hint

* if you want to purge varnish cache from magento backend, execute this command from apache2 container:
  * php bin/magento setup:config:set --http-cache-hosts=varnish:6081
