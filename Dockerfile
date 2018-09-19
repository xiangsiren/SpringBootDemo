FROM ubuntu:16.04
MAINTAINER modian(1050215723@qq.com)
ARG app
ARG jdkdir
ADD $jdkdir /usr/local/jdk8
ENV JAVA_HOME /usr/local/jdk8/jdk1.8.0_181  
ENV JRE_HOME $JAVA_HOME/jre  
ENV CLASSPATH :$JAVA_HOME/lib:$JRE_HOME/lib  
ENV PATH $PATH:$JAVA_HOME/bin  
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
