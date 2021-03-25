FROM ubuntu:20.04
RUN DEBIAN_FRONTEND="noninteractive" apt update && apt upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-mbstring git unzip ssh rsync
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"
