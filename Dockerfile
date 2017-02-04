FROM ulsmith/debian-apache-php
MAINTAINER Paul Smith <p@ulsmith.net>

ADD ./ext /var/www/html/ext
ADD ./library /var/www/html/library
ADD ./rars /var/www/html/rars
ADD ./theme /var/www/html/theme
ADD ./build /var/www/html/build
ADD ./.htaccess /var/www/html/.htaccess
ADD ./index.php /var/www/html/index.php

RUN rm /var/www/html/index.html && chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["/run.sh"]
