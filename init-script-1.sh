#!/bin/bash

yum update -y
yum install -y php-fpm php-curl php-cli php-json php-mysql php-opcache php-dom php-exif php-fileinfo php-zip php-mbstring php-hash php-imagick php-openssl php-pcre php-xml php-bcmath php-filter php-pear php-gd php-mcrypt php-intl php-iconv php-zlib php-xmlreader
yum install ngnix -y

