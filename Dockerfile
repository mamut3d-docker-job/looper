FROM centos:7

USER       root
RUN        yum install -y wget curl telnet bind-utils && \
           && yum clean all
RUN        adduser nobody -M -d /tmp
USER       nobody
WORKDIR    /tmp
ENTRYPOINT ["tail", "-f", "/dev/null"]