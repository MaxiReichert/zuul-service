FROM openjdk:11.0.7-slim
LABEL maintainer="me@mail.com"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} zuul-service.jar
ENTRYPOINT ["java","-jar","/zuul-service.jar"]