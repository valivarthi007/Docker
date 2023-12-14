FROM openjdk:11

LABEL MAINTAINER vdr007

LABEL env=production

ENV workdir /var/lib

WORKDIR $workdir

ADD https://get.jenkins.io/war-stable/2.426.1/jenkins.war $workdir

EXPOSE 8080

CMD ["java","-jar","jenkins.war"]