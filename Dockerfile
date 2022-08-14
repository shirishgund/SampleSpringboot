FROM openjdk:8-jdk-alpine
ADD target/*.jar  sampletest-0.0.2-snapshot.jar
ENTRYPOINT ["java","-jar","/sampletest-0.0.2-snapshot.jar"]
