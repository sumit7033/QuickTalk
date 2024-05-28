# Start with a base image containing Java runtime
FROM openjdk:11

# Add Maintainer Info
MAINTAINER Sumit Kumar <sumitkumar7033@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/quickTalk-0.0.1.jar

# Add the application's jar to the container
ADD ${JAR_FILE} quickTalk-0.0.1.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/quickTalk-0.0.1.jar"]

