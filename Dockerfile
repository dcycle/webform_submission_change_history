FROM dcycle/drupal:8

# Make sure opcache is disabled during development so that our changes
# to PHP are reflected immediately.
RUN echo 'opcache.enable=0' >> /usr/local/etc/php/php.ini

# Download contrib modules
RUN drush dl devel -y
RUN drush dl webform-8.x-5.0-rc29 -y
RUN apt-get -y install wget
RUN cd modules/webform && wget https://www.drupal.org/files/issues/2018-05-29/2972498-8-webform-8.x-5.x-log-changes.patch
RUN cd modules/webform && patch -p1 < 2972498-8-webform-8.x-5.x-log-changes.patch

EXPOSE 80
