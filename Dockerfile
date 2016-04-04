## Docker File for Debian 7
FROM debian:testing
MAINTAINER "FinalDuty" <andy.dustin@gmail.com>

RUN \
  curl -s https://raw.githubusercontent.com/finalduty/debian/master/sources.list > /etc/apt/sources.list; \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.bashrc > /root/.bashrc; \
  curl -s https://raw.githubusercontent.com/finalduty/configs/master/.vimrc > /root/.vimrc;

RUN apt-get update && apt-get install -y vim 
