# written by Benoit Sarda
# JBoss container base - to be reused by jboss apps containers.
#   bsarda <b.sarda@free.fr>
#
FROM centos:centos7.2.1511
LABEL maintainer "b.sarda@free.fr"

# expose
EXPOSE 8080 8442 8443

# declare vars
ENV JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk \
	JBOSS_HOME=/var/local/jboss/jboss-as-7.1.1.Final \
	APPSRV_HOME=/var/local/jboss/jboss-as-7.1.1.Final

# install openjdk 1.7.x and prepare
RUN mkdir /var/local/jboss/ -p && yum install -y java-1.7.0-openjdk

# add jboss, uncompressed, and exec
ADD ["jboss-as-7.1.1.Final.tar.gz","/var/local/jboss/"]

CMD ["/var/local/jboss/jboss-as-7.1.1.Final/bin/standalone.sh", "-b", "0.0.0.0"]
