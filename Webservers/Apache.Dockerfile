# syntax=docker/dockerfile:1
FROM httpd:2.4.58-alpine

# Setting Apache root
ENV document_root="/usr/local/apache2/htdocs/"

# Setting workdir for static website deployment
WORKDIR ${document_root}

# Copying Files from current directory to Working directory
VOLUME document_root

# Exposing Ports
EXPOSE 80

# Setting Nginx to run
# Set the main process to run Apache HTTP server
CMD ["httpd", "-D", "FOREGROUND"]
