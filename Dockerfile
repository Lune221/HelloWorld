# syntax=docker/dockerfile:1

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openjdk-8-jdk
# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

WORKDIR /app

RUN git clone https://github.com/Lune221/HelloWorld.git
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# RUN ./mvnw dependency:resolve
RUN javac HelloWorld/HelloWorld.java
# COPY HelloWorld/HelloWorld.class .
RUN ls -liaht
RUN cp HelloWorld/* .
RUN ls -liaht
# COPY src ./src

CMD ["java", "HelloWorld"]

