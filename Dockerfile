FROM tomcat:9.0.80-jre8-temurin-jammy
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD /target/CAxSOFT_Java-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8081
CMD ["catalina.sh", "run"]

