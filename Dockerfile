FROM openjdk:17-alpine
#Here java 17 are the base image of the our java application
COPY ./target/docdeployment-0.0.1-SNAPSHOT.jar docdeployment-0.0.1-SNAPSHOT.jar
#copying the jar file from the maven build pacakages
ENTRYPOINT ["java","-jar","/docdeployment-0.0.1-SNAPSHOT.jar"]
#It is a just like a our command to entry the command when our container is stared

#sudo docker build --tag=first-docker-server:latest .
#This command is used to build the image on the locally.
#sudo docker run -p8181:8080 first-docker-server:latest
#here our 8181 is exposed port of the docker container nad 8080 is our application port
#first one is host port and secornd one is server port