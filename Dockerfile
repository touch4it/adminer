FROM adminer:standalone

ENV PHP_UPLOAD_MAX_FILE_SIZE=2000M
ENV PHP_POST_MAX_SIZE=2000M

USER root

RUN touch /usr/local/etc/php/conf.d/override.ini
RUN echo "upload_max_filesize = \${PHP_UPLOAD_MAX_FILE_SIZE}" >> /usr/local/etc/php/conf.d/override.ini
RUN echo "post_max_size = \${PHP_POST_MAX_SIZE}" >> /usr/local/etc/php/conf.d/override.ini

USER adminer
