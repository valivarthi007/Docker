FROM busybox
ENV FOO=/bar
WORKDIR ${FOO}   
ADD . $FOO       