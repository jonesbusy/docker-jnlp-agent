FROM jenkins/jnlp-slave:3.10-1

ARG uid=1000
USER root
RUN chown 1000:1000 -R /home/jenkins/
RUN usermod -u ${uid} jenkins && groupmod -g ${uid} jenkins
USER jenkins

