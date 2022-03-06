FROM php:7.3.27-fpm-alpine3.12

RUN apk add --no-cache shadow vim composer bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html

#COPY . /var/www
RUN chown -R www-data:www-data /var/www

RUN ln -s public html

RUN usermod -u 1000 www-data
USER www-data

#RUN composer install && \
#    cp .env.example .env && \
#    php artisan key:generate && \
#    php artisan config:cache

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
