
FROM registry.access.redhat.com/ubi8/ubi:latest

# Install the Apache HTTP Server package
RUN yum install -y httpd 
    
    

# Set the working directory to the Apache document root directory
WORKDIR /var/www/html

RUN echo "adding paris" >> /var/www/html/index.html


# Expose port 80 to the outside world
EXPOSE 80

# Command to run when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
