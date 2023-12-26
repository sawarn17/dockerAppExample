FROM openjdk:17-alpine
#Here java 17 are the base image of the our java application
COPY ./target/docdeployment-0.0.1-SNAPSHOT.jar docdeployment-0.0.1-SNAPSHOT.jar
#copying the jar file from the maven build pacakages
ENTRYPOINT ["java","-jar","/docdeployment-0.0.1-SNAPSHOT.jar"]
#It is a just like a our command to entry the command when our container is stared