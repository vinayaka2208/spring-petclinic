# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

EXPOSE 8081

# copy jar into image
COPY target/*.war spring-petclinic.war

# run application with this command line 
ENTRYPOINT ["java","-jar","spring-petclinic.war"]
