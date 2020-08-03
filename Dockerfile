FROM centos:7


RUN yum -y update
RUN yum -y install httpd
COPY index.html /var/www/html/index.html

EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D" , "FOREGROUND"]



# docker run -d -p 80:80 --name httpdvjp1 httpd-2 

# docker run -p 80:80 httpd-2
