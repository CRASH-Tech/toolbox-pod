FROM ubuntu:22.04

RUN apt-get update

RUN apt -y install apt-utils
RUN apt -y install bash
RUN apt -y install nano
RUN apt -y install mc
RUN apt -y install htop

RUN apt -y install openssh-client
RUN apt -y install telnet
RUN apt -y install curl
RUN apt -y install wget
RUN apt -y install net-tools
RUN apt -y install iputils-ping
RUN apt -y install tcpdump
RUN apt -y install rsync
RUN apt -y install git

RUN apt -y install python3
RUN apt -y install python3-pip
RUN apt -y install python3-yappi
RUN apt -y install redis-tools
RUN apt -y install sngrep
RUN apt -y install valgrind
RUN apt -y install postgresql-client
RUN apt -y install lvm2
RUN apt -y install fdisk

RUN apt -y install iotop
RUN apt -y install mtr
RUN apt -y install net-tools

RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    --create-dirs -o /usr/local/bin/minio-mc
RUN chmod a+x /usr/local/bin/minio-mc
