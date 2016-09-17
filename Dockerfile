# written by Benoit Sarda
#
#   bsarda <b.sarda@free.fr>
#
FROM centos:centos7.2.1511
MAINTAINER Benoit Sarda <b.sarda@free.fr>

# expose
EXPOSE 8080 8442 8443

# declare vars
ENV JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk \
	JBOSS_HOME=/opt/jboss-as-7.1.1.Final \
	APPSRV_HOME=/opt/jboss-as-7.1.1.Final

# install openjdk 1.7.x and prepare
RUN yum install -y java-1.7.0-openjdk && mkdir -p /opt

# add jboss, uncompressed, and exec
ADD ["jboss-as-7.1.1.Final.tar.gz","/opt/"]
CMD ["/opt/jboss-as-7.1.1.Final/bin/standalone.sh", "-b", "0.0.0.0"]
