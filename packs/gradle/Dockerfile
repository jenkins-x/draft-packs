FROM openjdk:8-jdk-slim
ENV PORT 8080
EXPOSE 8080
COPY build/libs/*.jar /opt/app.jar
WORKDIR /opt
ENTRYPOINT exec java -Xms$HEAP_SIZE -Xmx$HEAP_SIZE -XX:MaxMetaspaceSize=$PERMGEN_SIZE $JAVA_OPTS -jar app.jar
