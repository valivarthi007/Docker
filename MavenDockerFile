# Use Alpine Linux as the base image
FROM alpine

# Labeling
LABEL MAINTAINER vdr007

# Install OpenJDK 11 and Maven
RUN apk update \
    && apk add openjdk11 \
    && apk add --no-cache maven \
    && rm -rf /var/cache/apk/*

# Copy the maven.sh script to /etc/profile.d
COPY maven.sh /etc/profile.d

# Make the maven.sh script executable
RUN chmod +x /etc/profile.d/maven.sh

# Set the environment variables for Maven
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$MAVEN_HOME/conf"

# Add Maven binaries to the PATH
ENV PATH $PATH:$MAVEN_HOME/bin

# Set the working directory
WORKDIR /app

# Set the entry point to Maven
ENTRYPOINT ["mvn"]

# Default command to print Maven version information
CMD ["--version"]



# Maven.sh file 
#!/bin/sh

export MAVEN_HOME=/usr/share/maven
export MAVEN_CONFIG="$MAVEN_HOME/conf"

export PATH=$PATH:$MAVEN_HOME/bin
