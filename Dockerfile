FROM ubuntu

MAINTAINER  cailiansheng
RUN echo "copy files..."
COPY target/photoshop-0.0.1-SNAPSHOT.jar /tmp/


RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java8-installer

EXPOSE 8080
