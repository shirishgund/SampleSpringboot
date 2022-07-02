FROM openjdk:8-jdk-alpine
COPY target/*.jar SampleTest-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/SampleTest-0.0.1-SNAPSHOT.jar"]
