# Getting lightweight node image
FROM node:10-alpine

# Setting app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copying package.jsonfile where dependencies of application are present
COPY package.json .

# Installing Dependencies
RUN npm install

WORKDIR /usr/src/app

# Copying source code 
COPY . /usr/src/app/

# Exposing Nessecary Ports
EXPOSE 80

# Running Application
CMD ["npm","start"]

