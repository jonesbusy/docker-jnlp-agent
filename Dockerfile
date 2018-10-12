FROM jenkins/jnlp-slave:3.10-1

# Build args
ARG uid=1000
ARG gid=1000
ARG group=jenkins-slave
ARG user=jenkins-slave

ENV HOME /home/${user}
ENV AGENT_WORKDIR=/home/${user}/agent

USER root

RUN addgroup --gid ${gid} ${group}
RUN adduser --home $HOME --uid ${uid} --gid ${uid} --disabled-password --system ${user}

RUN chmod a+rwx /home/${user}
WORKDIR /home/${user}

USER ${user}

RUN id
