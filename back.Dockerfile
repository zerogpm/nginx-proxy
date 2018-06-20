FROM php:7.2-apache

RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get update && apt-get install -y --fix-missing \
                ssl-cert

RUN a2enmod ssl

EXPOSE 443