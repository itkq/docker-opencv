FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty multiverse' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y wget

ADD Install-OpenCV /tmp/opencv
WORKDIR /tmp/opencv/Ubuntu
RUN apt-get install -y libfaac-dev
RUN ./opencv_latest.sh
