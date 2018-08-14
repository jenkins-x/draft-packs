FROM openjdk:8-jdk-slim
ENV PORT 8080
EXPOSE 8080
COPY build/libs/*.jar /opt/app.jar
WORKDIR /opt
ENTRYPOINT exec java -Xms256m -Xmx256m -XX:MaxMetaspaceSize=128m $JAVA_OPTS -jar app.jar
