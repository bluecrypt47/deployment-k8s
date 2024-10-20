FROM php:8.0-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && apt-get update && apt-get install -y default-mysql-client 
    
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf 

COPY ./src/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html

EXPOSE 80

CMD [ "apache2-foreground" ]