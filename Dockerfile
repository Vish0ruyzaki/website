FROM ubuntu:latest
RUN apt update && apt install  -y apache2
WORKDIR /var/www/html
copy ./index.html /var/www/html
copy ./images /var/www/html
EXPOSE 85
CMD ["apachectl", "-D", "FOREGROUND"]
