FROM openjdk:8-jre-alpine
ENV PORT 8080
EXPOSE 8080
COPY target/*.war /opt/app.war
WORKDIR /opt
CMD ["java", "-jar", "app.war"]