## Docker File for Debian 7

FROM debian:7
MAINTAINER "FinalDuty" finalduty@github.com
WORKDIR /root/

ADD http://raw.githubusercontent.com/finalduty/docker-debian7/master/sources.list /etc/apt/sources.list
ADD http://raw.githubusercontent.com/finalduty/git/master/configs/.bashrc /root/.bashrc
ADD http://raw.githubusercontent.com/finalduty/git/master/configs/.vimrc /root/.vimrc

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim apt-file apt-utils
