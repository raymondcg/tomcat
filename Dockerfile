FROM tomcat:9.0.14-jre8-alpine
RUN chmod -R 777 /usr/local/tomcat
COPY test.war /usr/local/tomcat/webapps/test.war
ENV CATALINE_BASE=/usr/local/tomcat
CMD /usr/local/tomcat/bin/catalina.sh run