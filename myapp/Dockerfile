FROM alpine
LABEL MAINTAINER vdr007

# Setting the Working Directory
WORKDIR /var/www/localhost/htdocs

# Making a directory myportfolio

RUN mkdir -p myportfolio

# Install and Configure Apache
RUN apk update \
    && apk add --no-cache apache2 \
    && rm -rf /var/cache/apk/*

# Copying Files
COPY index.html ./myportfolio/
COPY style.css ./myportfolio/
COPY img/* ./myportfolio/img/

# Restart Apache2
RUN httpd -k restart

# Exposing Ports
EXPOSE 80

# Starting apache and serving the index

CMD ["httpd", "-D", "FOREGROUND"]

