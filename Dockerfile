FROM registry.cn-hangzhou.aliyuncs.com/syl/ubuntu_14_jdk_8
ARG app
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
