#FROM centos:centos7
FROM zookeeper:3.4.14

#RUN yum install -y wget

RUN mkdir /opt/confd
RUN mkdir /etc/confd

WORKDIR /opt/confd

RUN wget https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64   && \
    mv confd-0.16.0-linux-amd64 confd  && \
    chmod 775 confd  && \
    ln -s /opt/confd/confd /bin/confd




