FROM ubuntu:20.04
RUN apt update && apt upgrade -y
RUN apt install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
RUN apt install -y ssh rsync
