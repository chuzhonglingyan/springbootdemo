FROM tomcat:latest
#维护者
MAINTAINER yuntian <944610721@qq.com>
RUN echo "Asia/Shanghai" > /etc/timezone
#将webapp下的全部删除
RUN rm -rf /usr/local/tomcat/webapps/*
#将target下的xx.war拷贝到/usr/local/tomcat/webapps/下
ADD /target/springbootdemo-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/

#设置启动命令
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]