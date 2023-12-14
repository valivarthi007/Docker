ARG version=ubi8
FROM redhat/$version

# Install Apache HTTP Server
RUN yum -y install httpd \
    && yum clean all \
    && systemctl enable httpd

# Create a simple test page
RUN echo "Successful Web Server Test" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache HTTP Server
CMD [ "httpd", "-DFOREGROUND" ]
