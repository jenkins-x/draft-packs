FROM jenkins/jenkins:2.121.3
USER root
ADD tmp/output/target/jenkinsfile-runner-256.0-test.war /usr/share/jenkins/jenkins.war
RUN mkdir /app && unzip /usr/share/jenkins/jenkins.war -d /app/jenkins

# Uncomment this to enable jenkins file runner
#COPY tmp/output/jenkinsfileRunner /app
#RUN chmod +x /app/bin/jenkinsfile-runner 

RUN mkdir -p /usr/share/jenkins/ref/plugins
COPY tmp/output/plugins /usr/share/jenkins/ref/plugins

# Uncomment this to enable jenkins file runner
#ENTRYPOINT ["/app/bin/jenkinsfile-runner", \
#            "-w", "/app/jenkins",\
#            "-p", "/usr/share/jenkins/ref/plugins",\
#            "-f", "/workspace/Jenkinsfile"]
