## Docker File for Debian 7
FROM debian
MAINTAINER "FinalDuty" <andy.dustin@gmail.com>

RUN \
  curl -s http://raw.githubusercontent.com/finalduty/configs/master/.bashrc > /root/.bashrc; \
  curl -s http://raw.githubusercontent.com/finalduty/configs/master/.vimrc > /root/.vimrc;

RUN apt-get update && apt-get install -y vim 
