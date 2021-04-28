# ..

``
aptitude install php7.3

aptitude install mariadb-server mariadb-client
 aptitude install php7.3-mysql

sudo mysql_secure_installation

 When prompted, answer the questions below by following the guide:
 Enter current password for root (enter for none): Just press the Enter
 Set root password? [Y/n]: Y
 New password: Enter password
 Re-enter new password: Repeat password
 Remove anonymous users? [Y/n]: Y
 Disallow root login remotely? [Y/n]: Y
 Remove test database and access to it? [Y/n]:  Y
 Reload privilege tables now? [Y/n]:  Y


aptitude install phpmyadmin



vi /etc/php/7.3/fpm/php.ini




chmod -R 644 kgdp/
Устанавливаем права для папок. Необходим флаг "выполнение"
find kgdp/ -type d -exec chmod 755 {} \;
```

####################################
https://websiteforstudents.com/install-nginx-mariadb-and-php-7-2-fpm-with-phpmyadmin-on-ubuntu-16-04-18-04-18-10-lemp-phpmyadmin/
