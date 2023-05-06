# syntax=docker/dockerfile:1

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

WORKDIR /app

RUN git clone https://github.com/Lune221/HelloWorld

RUN javac HelloWorld/HelloWorld.java
RUN ls -liaht
RUN cp HelloWorld/* .
RUN ls -liaht

CMD ["java", "HelloWorld"]
