## Docker File for Debian 7
FROM debian:7
MAINTAINER "FinalDuty" <andy.dustin@gmail.com>

RUN \
  curl -s http://raw.githubusercontent.com/finalduty/docker-debian7/master/sources.list > /etc/apt/sources.list; \
  curl -s http://raw.githubusercontent.com/finalduty/configs/master/.bashrc > /root/.bashrc; \
  curl -s http://raw.githubusercontent.com/finalduty/configs/master/.vimrc > /root/.vimrc;

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim 
