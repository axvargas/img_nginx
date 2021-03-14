FROM ubuntu
MAINTAINER Andres X. Vargas "axvargas@fiec.espol.edu.ec"

RUN apt-get update  && apt-get install -y nginx
VOLUME /var/www/html

ARG webpage
ADD $webpage /var/www/html/
#RUN echo 'My first Dockerfile' > /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/nginx","-g", "daemon off;"]

EXPOSE 80

