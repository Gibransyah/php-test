FROM jenkins/jenkins:lts

USER root

# Install Docker CLI
RUN apt-get update && apt-get install -y docker.io

# Tambahkan user jenkins ke grup docker
RUN usermod -aG docker jenkins

USER jenkins
