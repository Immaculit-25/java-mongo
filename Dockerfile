FROM tomcat:9.0-jdk11-openjdk
LABEL maintainer="your_email@example.com"

# Remove default apps and deploy your WAR
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/nameregistration.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
