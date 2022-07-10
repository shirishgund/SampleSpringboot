FROM maven:3.6.0-jdk-11-slim AS build
COPY src /tmp  
COPY pom.xml /tmp 
RUN mvn -f /tmp/pom.xml clean install
FROM openjdk:8-jdk-alpine
COPY /tmp/*.jar SampleTest-0.0.3-SNAPSHOT.jar 
ENTRYPOINT ["java","-jar","/SampleTest-0.0.3-SNAPSHOT.jar"]
