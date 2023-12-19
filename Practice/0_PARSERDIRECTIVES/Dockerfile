# syntax=docker/dockerfile:1
FROM busybox
ENV latest="/first"
RUN mkdir ${latest}
ENV latest="/tmp" latest="/"
WORKDIR ${latest}
#ENTRYPOINT ['sh']
ENTRYPOINT ["ping" ,"google.com"]