# docker-jboss
This is a JBoss 7.1 container on CentOS 7.2 1511.  
Uses ports : 8080 8442 8443  
This container should be used as a base for app containers, not directly.  

Sample usage:  
`docker run -P -d --name jboss bsarda/jboss`  
