FROM debian:latest
MAINTAINER Adria Dupla Paz <nesetirex2@gmail.com>

RUN echo "nameserver 10.27.100.1" > /etc/resolv.conf && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install apache2 -y && \
rm -rf /var/www/html/* && \
echo "<html><body><h1>Hola soc Adrià</h1></body></html>" >> /var/www/html/index.html

EXPOSE 80 443

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
