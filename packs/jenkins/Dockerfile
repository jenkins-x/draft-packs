FROM jenkins/jenkins:2.142-slim

USER root
RUN apt-get update && apt-get install -y vim
USER jenkins

# Disable plugin banner on startup
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY config/*.yaml /usr/share/jenkins/ref/
COPY startup/*.groovy /usr/share/jenkins/ref/init.groovy.d/

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
