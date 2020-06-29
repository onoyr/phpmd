FROM php:7.4-cli

RUN apt-get update
RUN apt-get install -y wget

RUN wget -c https://phpmd.org/static/latest/phpmd.phar
RUN mv phpmd.phar /usr/local/bin/phpmd
RUN chmod +x /usr/local/bin/phpmd

ENTRYPOINT ["phpmd"]
CMD []
