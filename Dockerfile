FROM jenkins/jnlp-slave:3.10-1

ARG uid=1000
USER root
RUN usermod -u ${uid} jenkins && groupmod -g ${uid} jenkins
USER jenkins

