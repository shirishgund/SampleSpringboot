FROM openjdk:8-jdk-alpine
COPY --from=build /usr/src/app/target/*.jar  SampleTest-0.0.3-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/SampleTest-0.0.3-SNAPSHOT.jar"]
