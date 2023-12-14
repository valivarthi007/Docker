FROM sample

# Install Java (OpenJDK 11 in this example)
RUN yum install -y java-11-openjdk \
    && yum clean all

# Setting Working Directory
WORKDIR /opt

# Placing the extracted copy in working directory
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz .

# Extracting the tar.gz file and renaming the Tomcat directory
RUN tar -xzvf apache-tomcat-9.0.83.tar.gz && \
    mv apache-tomcat-9.0.83 tomcat && \
    rm apache-tomcat-9.0.83.tar.gz

# Expose port 8080
EXPOSE 8080

# Start Tomcat in the foreground
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
