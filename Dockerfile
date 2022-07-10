FROM maven:3.6.0-jdk-11-slim AS build
RUN mvn -f pom.xml clean package
FROM openjdk:8-jdk-alpine
ADD target/*.jar SampleTest-0.0.3-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/SampleTest-0.0.3-SNAPSHOT.jar"]
