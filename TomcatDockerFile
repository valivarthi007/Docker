# Pull the Latest official tomcat image
FROM alpine

# Adding Maintainer Label
LABEL MAINTAINER vdr007

# Setting Working Directory
WORKDIR /opt

# Placing the extracted copy in working directory
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz .

# Extracting the tar.gz file and renaming the Tomcat directory
RUN tar -xzvf apache-tomcat-9.0.83.tar.gz && \
    mv apache-tomcat-9.0.83 tomcat && \
    rm apache-tomcat-9.0.83.tar.gz

# Installing openjdk11
RUN apk update && \
    apk add openjdk11

# Expose the default Tomcat port
EXPOSE 8080

# Executing startup script
CMD ["/opt/tomcat/bin/catalina.sh", "run"]



# Test the above using

$ docker container run --rm -v $(pwd):/app --name mvn_test vdr007/maven package

$ docker container run --rm -v $(pwd):/opt/tomcat/webapps --name test -p 8086:8080  vdr007/tomcat:v3 sh -c "/opt/tomcat/bin/catalina.sh stop && /opt/tomcat/bin/catalina.sh run
