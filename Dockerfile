#use the Openjdk 11 official image.
FROM openjdk:11

#create a new app directory
RUN mkdir /app

#copy from host machine to docker
COPY bin/org/examples/docker/demo/MainApp.class /app/org/examples/docker/demo/MainApp.class
 
#set the workdirectory for future commands 
WORKDIR /app

RUN dir /app
#execute the mainClass from cmd. 
CMD ["java","org.examples.docker.demo.MainApp"]