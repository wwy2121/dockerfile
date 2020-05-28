FROM centos:latest
MAINTAINER wuwenying

ENV SOFT_PATH /usr/local
ENV NSQ_VERSION nsq-1.2.0.linux-amd64.go1.12.9

ADD start.sh /
ADD ${NSQ_VERSION}.tar.gz ${SOFT_PATH}

RUN yes | cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /

ENTRYPOINT ["sh","start.sh"]
