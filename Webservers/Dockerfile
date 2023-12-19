# syntax=docker/dockerfile:1
FROM nginx:alpine

# Setting nginx Root
ENV document_root="/data/www"

# Setting workdir for static website deployment
WORKDIR ${document_root}

# Copying Files from current directory to Working directory
COPY . .

# Copying custom nginx configuration
COPY nginx-custom.conf /etc/nginx/conf.d/default.conf

# Exposing Ports
EXPOSE 80

# Setting Nginx to run
CMD ["nginx", "-g", "daemon off;"]
