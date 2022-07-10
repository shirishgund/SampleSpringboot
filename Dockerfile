FROM maven:3.6.0-jdk-11-slim AS build
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package
FROM openjdk:8-jdk-alpine
COPY --from=build /usr/src/app/target/*.jar  SampleTest-0.0.3-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/SampleTest-0.0.3-SNAPSHOT.jar"]
