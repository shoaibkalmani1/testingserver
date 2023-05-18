FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN echo "hello world">/var/www/html/index.html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
