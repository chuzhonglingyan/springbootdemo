FROM kdvolder/jdk8
VOLUME /tmp
ADD springbootdemo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
