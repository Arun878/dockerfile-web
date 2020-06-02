FROM centos:centos7

EXPOSE 80

ENV DEBIAN_FRONTEND=noninteractive

RUN yum install net-tools httpd php -y ;

COPY ./web/ /var/www/html/

CMD ["/usr/sbin/httpd", "-DFOREGROUND"] ;
