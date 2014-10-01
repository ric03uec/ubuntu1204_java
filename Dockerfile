FROM shippableimages/ubuntu1204_base:0.0.2

RUN echo "debconf shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections;
RUN echo "debconf shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections;
RUN add-apt-repository ppa:webupd8team/java;
RUN apt-get update;
RUN apt-get -yy install oracle-java7-installer oracle-java8-installer openjdk-6-jdk openjdk-7-jdk;

CMD ["java"]
