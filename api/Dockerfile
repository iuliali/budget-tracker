# Highly inspired by this Medium article 
# https://medium.com/@ramanamuttana/build-a-docker-image-using-maven-and-spring-boot-418e24c00776

# Use an official Maven image as the base image
FROM maven:3.8.7-eclipse-temurin-19 AS build
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and the project files to the container
COPY pom.xml .
COPY src ./src
# Build the application using Maven
RUN mvn clean package -DskipTests

# Use an official OpenJDK image as the base image
FROM openjdk:19-ea-jdk-slim
# Set the working directory in the container
WORKDIR /app
# Copy the built JAR file from the previous stage to the container
COPY --from=build /app/target/api-0.0.1-SNAPSHOT.jar .
# Set the command to run the application
CMD ["java", "-jar", "api-0.0.1-SNAPSHOT.jar"]