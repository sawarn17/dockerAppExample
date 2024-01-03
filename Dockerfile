#FROM openjdk:17-alpine
#Here java 17 are the base image of the our java application
#COPY ./target/docdeployment-0.0.1-SNAPSHOT.jar docdeployment-0.0.1-SNAPSHOT.jar
#copying the jar file from the maven build pacakages
#ENTRYPOINT ["java","-jar","/docdeployment-0.0.1-SNAPSHOT.jar"]
#It is a just like a our command to entry the command when our container is stared

#sudo docker build --tag=first-docker-server:latest .
#This command is used to build the image on the locally.
#sudo docker run -p8181:8080 first-docker-server:latest
#here our 8181 is exposed port of the docker container nad 8080 is our application port
#first one is host port and secornd one is server port

#Maven build
#taking of java Image
FROM maven:3.8.3-openjdk-17 AS build
#copyting the source file
COPY src /home/app/src
#copy the pomm file for maven build
COPY pom.xml /home/app
#At run time run this script to the build the jar file
RUN mvn -f /home/app/pom.xml clean package
#Exposing of the port of the application
EXPOSE 8080
#EntrytypeScript
ENTRYPOINT ["java","-jar","/home/app/target/docdeployment-0.0.1-SNAPSHOT.jar"]

