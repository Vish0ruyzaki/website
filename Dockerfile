FROM ubuntu:latest
RUN apt update && apt install -y apache2
WORKDIR /var/www/html
copy . /var/www/html
RUN echo "Listen 85" > /etc/apache2/ports.conf && \
    sed -i 's/VirtualHost *:80/VirtualHost *:85/g' /etc/apache2/sites-available/000-default.conf
EXPOSE 85
CMD ["apachectl", "-D", "FOREGROUND"]
