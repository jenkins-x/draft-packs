FROM jenkins/jenkins:2.144
USER root
ENV CWP_VERSION 1.0-SNAPSHOT
ADD tmp/output/target/jenkinsfile-runner-$CWP_VERSION.war /usr/share/jenkins/jenkins.war
RUN mkdir /app && unzip /usr/share/jenkins/jenkins.war -d /usr/share/jenkins/ref
#COPY tmp/output/jenkinsfileRunner /app
#RUN chmod +x /app/bin/jenkinsfile-runner 
RUN mkdir -p /usr/share/jenkins/ref/plugins
#COPY tmp/output/plugins /usr/share/jenkins/ref/plugins

# Disable plugin banner on startup
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

#ENTRYPOINT ["/app/bin/jenkinsfile-runner", \
#            "-w", "/app/jenkins",\
#            "-p", "/usr/share/jenkins/ref/plugins",\
#            "-f", "/workspace/Jenkinsfile"]
