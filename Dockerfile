FROM php:8.2-cli

WORKDIR /home/ubuntu/

# RUN curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php

RUN apt update && apt install -y nodejs npm

WORKDIR /home/ubuntu/composer

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
 
WORKDIR /home/ubuntu
# RUN HASH=`curl -sS https://composer.github.io/installer.sig`
# RUN php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
COPY CapyType .

RUN npm install
RUN npm run build

RUN composer install

RUN composer clear-cache

RUN cp .env.example .env

RUN touch database/database.sqlite

RUN php artisan key:generate
RUN php artisan migrate
RUN php artisan db:seed

EXPOSE 8000

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
