FROM redhat/ubi8
RUN dnf update -y
RUN dnf install httpd -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
