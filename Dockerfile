# Docker image for springboot file run
# VERSION 0.0.1
# Author: yuntian
# 基础镜像使用java
FROM kdvolder/jdk8
# 作者
MAINTAINER yuntian <944610721@qq.com>

RUN mkdir /app
RUN mkdir /app/logs
ADD target/springbootdemo-0.0.1-SNAPSHOT.jar /app/app.jar
RUN bash -c 'touch /app/app.jar'
WORKDIR /app
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]