FROM maven:3.6.0-jdk-11-slim AS build
COPY src /usr  
COPY pom.xml /usr 
RUN mvn -f /usr/pom.xml clean install
FROM openjdk:8-jdk-alpine
COPY --from=build /usr/target/*.jar  SampleTest-0.0.3-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/SampleTest-0.0.3-SNAPSHOT.jar"]
