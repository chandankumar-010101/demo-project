FROM centos: latest
MAINTAINER kumarchandan@gmail.com
RUN yum install httpd -y\zip\unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*.
RUN rm -rf_MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","D","FORGROUND"]
EXPOSE 80
