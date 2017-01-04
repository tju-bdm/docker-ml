FROM ubuntu:14.04
MAINTAINER CoBoosting <support@coboosting.com>

# Install Java.
RUN apt-get update && \
  apt-get install -y python-software-properties software-properties-common && \
  echo oracle-javaVERSION-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-javaVERSION-installer && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdkVERSION-installer

ENV JAVA_HOME /usr/lib/jvm/java-VERSION-oracle
